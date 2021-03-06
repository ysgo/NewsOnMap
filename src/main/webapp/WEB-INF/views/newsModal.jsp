<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!-- News Modal -->
<div id="modal_box" class="modal printable" style="display: none;">
	<div style="z-index:1;position: fixed; top: 10%; left: 15%;right:15%; bottom:10%; background-color:white;">
		<div id="modal-content" style="height:100%">
			<div class="modal_header">
				<button type="button" onClick="closeBtn()" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
				<div>
					<h3 id="m_newsname" style="font-family: 'Sunflower', sans-serif;"></h3>
					<h3 id="m_title" style="font-family: 'Nanum Gothic', sans-serif;"></h3>
				</div>
				<div>
					<span id="m_category"></span>
					<span id="m_date"></span>
				</div>
			</div>
			<div class="modal_body">
					<div style="text-align:center;">
						<img class="img-responsive" id="m_img" src="">
					</div>
					<p id="m_content"></p>
			</div>
			<div class="modal_footer">
				<footer>
					<button id="closeModal">Close</button>
				</footer>
			</div>
		</div>
	</div>
</div>