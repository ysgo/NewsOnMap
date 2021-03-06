<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
	<div class="row">
		<div class="col-lg-12 text-center">
			<h2 class="section-heading" style="padding-top: 0px;">
				<i class="far fa-newspaper"></i> &nbsp;Today's News &nbsp;<i
					class="far fa-newspaper"></i>
			</h2>
			<div class="blank"></div>

			<!-- action="/newsbigdata/main.do/NewsdetailView.do" -->
			<form id="SearchForm" name="SearchForm" method="GET">
				<input id="action" type="hidden" name="action" value="search">
				<input id="curPage" type="hidden" name="curPage" value="1">
				<input type="text" id="keyword" name="keyword"
					style="border: 0; outline: 0; border-bottom: 1px solid #bfbfbf; width: 60%; height: 40px; font-size: 18px"
					type="text" placeholder="검색어를 입력하세요.">

				<button
					style="width: 17%; height: 40px; border: 0; outline: 0; background-color: #799ab8; color: white;"
					onclick="searchType('GET');return false; ">검색</button>
			</form>
		</div>
	</div>

	<div class="row text-center">
		<div class="col-md-2" style="min-height: 800px">
			<div style="padding-top: 70px; height: 100%">

				<div id="ctg-list">
					<div
						style="padding-top: 20px; padding-bottom: 15px; border-bottom: 1px solid #c2c3c4">
						<h4>언론사</h4>
					</div>
					<span id="multiPrint"></span><br />
					<div class="cb">
						KBS&nbsp;<input type="checkbox" class="check" value="KBS"><br>
					</div>
					<div class="cb">
						YTN&nbsp;<input type="checkbox" class="check" value="YTN"><br>
					</div>
					<div class="cb">
						서울경제&nbsp;<input type="checkbox" class="check" value="서울경제"><br>
					</div>
					<div class="cb">
						매일경제&nbsp;<input type="checkbox" class="check" value="매일경제"><br>
					</div>
					<div class="cb">
						중앙일보&nbsp;<input type="checkbox" class="check" value="중앙일보"><br>
					</div>
					<div class="cb">
						내일신문&nbsp;<input type="checkbox" class="check" value="내일신문"><br>
					</div>
					<div class="cb">
						동아일보&nbsp;<input type="checkbox" class="check" value="동아일보"><br>
					</div>
					<div class="cb">
						문화일보&nbsp;<input type="checkbox" class="check" value="문화일보"><br>
					</div>
					<div class="cb">
						국민일보&nbsp;<input type="checkbox" class="check" value="국민일보"><br>
					</div>
					<div class="cb">
						조선일보&nbsp;<input type="checkbox" class="check" value="조선일보"><br>
					</div>
					<div class="cb">
						머니투데이&nbsp;<input type="checkbox" class="check" value="머니투데이"><br>
					</div>
					<div class="cb">
						파이낸셜뉴스&nbsp;<input type="checkbox" class="check" value="파이낸셜뉴스"><br>
					</div>
					<div class="cb">
						디지털타임스&nbsp;<input type="checkbox" class="check" value="디지털타임스"><br>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-10">
			<div id="issues-wrap" style="width: 100%;">
				<br>
				<div id="id01">
					<span id="test"></span>
					<h2 id="news_count" style="padding-bottom: 15px;"></h2>
				</div>

				<div id=tb class="newsList" style="min-height: 800px"></div>
				<div class="blank"></div>
				<ul style="align-items: center;" class="pagination">
					<li class="disabled"><a>&lt;&lt;</a></li>
					<li class="disabled"><a>&lt;</a></li>
					<li class="disabled active"><a>1</a></li>
					<li class="goPage" data-page="2"><a>2</a></li>
					<li class="goPage" data-page="3"><a>3</a></li>
					<li class="disabled"><a>></a></li>
					<li class="goLastPage"><a>>></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>