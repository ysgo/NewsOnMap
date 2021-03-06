window.onload = function() {
	curTime();
	setInterval(curTime, 1000);
	todayNews();
	searchGet(1);
	loadWordcloud();
}

function curTime() {
	var d = new Date();
	var days = [ '일', '월', '화', '수', '목', '금', '토' ];
	var localeDate = d.toLocaleDateString();
	var localeTime = d.toLocaleTimeString();
	var dateTime = localeDate.substr(0, localeDate.length - 1) + ' ('
			+ days[d.getDay()] + ') ' + localeTime;
	document.getElementById("issue-analysis-time").innerHTML = dateTime;
}

function todayNews(e) {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4) {
			if (this.status == 200) {
				var jsonObj = JSON.parse(this.responseText);
				var province = jsonObj.province;
				var sigungu = jsonObj.sigungu;
				var todayNews = jsonObj.todayNews;
				
				showNewsList(todayNews);
				$('#zoneName').empty();
				if(e != 1) {
					showMap(province, sigungu);
				}
			} else {
				console.log("Error: " + this.status);
			}
		}
	};
	xhttp.open("GET", "mainNews", true);
	xhttp.send();
}

function showNewsList(newsList) {
	$('#todayNews *').remove();
	$.each(newsList, function(idx, item) {
		var str='<li class="main_title" onclick="readNews('+ idx + ')">';
		str+='<span>';
		str+=item;
		str+='</span>';
		str+='</li>';
		$("#todayNews").append(str);
	});
} 

var markers = [], map;
function showMap(province, sigungu) {
	var mapDiv = document.getElementById('map');
	var mapOptions = {
		center : new naver.maps.LatLng(35.9, 127.2),
		zoom : 2,
		minZoom : 1,
		maxZoom : 7,
		logoControl : true,
		mapTypeControl : true,
		zoomControl : true,
		zoomControlOptions : {
			position : naver.maps.Position.TOP_RIGHT
		}
	};
	 
	map = new naver.maps.Map(mapDiv, mapOptions);
	setMarkers(province);
	markerInfo();
	naver.maps.Event.addListener(map, 'zoom_changed', function(zoom) {
		if(zoom >= 3) {
			clearmarkers();
			setMarkers(sigungu);
		} else {
			clearmarkers();
			setMarkers(province);
		}
		markerInfo();
	});
}

function setMarkers(zoneName) {
	for (var key in zoneName) {
		var lat = zoneName[key].latitude;
		var lng = zoneName[key].longitude;
		var name = zoneName[key].name;
		var p_code = zoneName[key].p_code;
		var s_code = zoneName[key].code;
		
		markers.push(new naver.maps.Marker({
			position : new naver.maps.LatLng(lat, lng),
			map : map,
			content: {
				name: name, 
				p_code : p_code, 
				s_code : s_code
				}
		}));
	}
}

function markerInfo() {
	for (var i=0; i<markers.length; i++)
	    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
}

function clearmarkers() {
	for(var i in markers)
		markers[i].setMap(null);
}

function getClickHandler(seq) {
	 return function(e) {
		var marker = markers[seq];
		var content = marker.content;
		document.getElementById('zoneName').innerText=content.name;
		$.ajax({
			url : 'selectZone',
			type : 'GET',
			data : { p_code : content.p_code, s_code : content.s_code },
			success : function(data) {
				showNewsList(data.zoneNews);
			},
			error : function(request, status, error) {
				console.log("Error code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});
	}
}