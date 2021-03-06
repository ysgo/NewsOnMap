<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
	<div class="row">
		<div class="col-lg-12 text-center">
			<h2 class="section-heading">Today's Issue</h2>
		</div>
	</div>

	<div class="row">
		<div class="col-md-8" style="text-align: right; padding-right: 30px;">
			<h5>
				<i class="far fa-clock"></i> <span id="issue-analysis-time"></span>&nbsp;&nbsp;&nbsp;
			</h5>
		</div>

		<div class="col-md-4">
			<h5>
				<button onclick="todayNews(1)" id="refresh">
					<i class="fas fa-sync-alt"></i>
				</button>
				<span id="zoneName"></span>
			</h5>
		</div>
	</div>
	<div style="height: 10px"></div>
	<div class="row text-center">
		<div class="col-md-8">
			<div id="map" style="width: 100%; height: 550px;">지도자리</div>
		</div>
		<div class="col-md-4">
			<div id="issue-wrap" style="width: 100%; height: 550px;">
				<div class="row">
					<ul
						style="width: 100%; height: 100%; margin: 0px; padding: 0px 0px 0px 15px !important"
						id="todayNews"></ul>
				</div>
			</div>
		</div>
	</div>
</div>