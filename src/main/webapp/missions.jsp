<%@ page
	language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib
	prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	name="viewport"
	content="width=device-width, initial-scale=1.0"
>
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
>
<script src="https://kit.fontawesome.com/e4855e3cf5.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"
></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"
></script>
<style>
body {
		height: 100%;
		background-image: url(./images/bg.jpg);
}

.profilebox {
    float: left;
}

.join {
		float: left;
		margin: 20px;
		border: 10px solid rgb(157, 217, 174);
		border-radius: 30px;
		width: 200px;
		height: 250px;
		font-weight: 500;
		padding: 12px;
		background-color: rgb(221, 241, 228);
}

.join-text {
		font-size: 18px;
		font-weight: 900;
}

.join-button {
		display: flex;
		justify-content: center;
		text-decoration: none;
		width: 155px;
		height: 40px;
		font-size: 17px;
		font-weight: 600;
		color: white;
		background-color: #49339A;
		border: none;
		border-radius: 45px;
		cursor: pointer;
		margin-top: 25px;
		transition: 0.5s ease-in-out;
}

.join-button:hover {
		background-color: white;
		color: #49339A;
		box-shadow: 10px 10px 10px #49339A;
		transition: 0.5s ease-in-out;
}

.col {
		width: 250px;
		height: 250px;
}

.card {
		border: 1px solid black;
		background-color: rgb(251, 247, 238);
}

.card:hover {
		transform: scale(1.1);
		transition: 0.5s ease-in-out;
		cursor: pointer;
}

div.card .card-top {
		display: flex;
		justify-content: space-between;
		margin: 0;
		padding: 0;
}

.bookmark {
		color: #FAF009;
		margin-left: 10px;
}

.like {
		color: #49339A;
		margin-right: 10px;
}

.card-text {
		margin-left: 2px;
}

.card-title {
		font-size: 18px;
		padding-left: 20px;
		margin-bottom: 1px;
		font-weight: bold;
}

.card-date {
		border: 1px solid black;
		border-radius: 5px;
		width: 81px;
		margin-left: 20px;
		font-size: 13px;
		padding-left: 10px;
}

.card-img {
		width: 180px;
		height: 95px;
		margin: 10px 20px 10px 20px;
}

.card-user {
		display: flex;
		justify-content: center;
		margin-left: 15px;
}

.user-img {
		width: 35px;
		height: 35px;
		border-radius: 50%;
		float: left;
		margin-right: 5px;
		margin-bottom: 10px;
		padding: 0;
}

.card-text {
		font-size: 12px;
		padding-top: 7px;
}

.pagination .page-link {
		margin-top: 4rem;
		text-decoration: none;
		/* 밑줄 스타일을 없앱니다. */
		color: black;
		background-color: transparent;
		/* 페이지 번호의 배경 색상을 투명으로 설정합니다. */
		border-color: transparent;
		/* 페이지 번호의 테두리 색상을 투명으로 설정합니다. */
}

.pagination .page-link:hover {
		text-decoration: none;
		color: white;
		background-color: transparent;
		border-color: transparent;
}
</style>

</head>

<body>
	<header>
		<jsp:include page="header.jsp" />
	</header>

	<div>
		<c:choose>
			<c:when test="${empty sessionScope.user}">
				<div class="join">
					<div class="join-text">회원가입을 하시면 오늘의 미션을 등록하고, 더욱 다양한 서비스를
						이용하실 수 있습니다!</div>
					<a
						href="join"
						class="join-button"
					>회원가입
					</a>
				</div>
			</c:when>
			<c:otherwise>
				<div class="profilebox">
					<jsp:include page="profilecard.jsp" />
				</div>
			</c:otherwise>
		</c:choose>

		<div class="cards">
			<div class="row row-cols-1 row-cols-md-4 g-4">
				<div class="col">
					<div class="card bg-secondary-subtle">
						<div class="card-top">
							<div class="bookmark">
								<i class="fa-solid fa-bookmark"></i>
							</div>
							<div class="like">
								33 <i class="fa-solid fa-heart"></i>
							</div>
						</div>
						<div class="card-text">
							<div class="card-title">양치하기 2번하기 ㅇㅇ</div>
							<div class="card-date">09월 19일</div>
							<img
								src="<%=request.getContextPath()%>/images/cha.png"
								class="card-img"
								alt="..."
							>
							<div class="card-user">
								<img
									src="<%=request.getContextPath()%>/images/cha2.png"
									class="user-img"
									alt="..."
								>
								<div class="card-text">최대닉네임글자 님 도전 중!</div>
							</div>
						</div>
					</div>
				</div>
				<!--  페이지네이션 -->
				<div class="d-flex justify-content-center mt-4">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item">
								<a
									class="page-link"
									href="#"
									aria-label="Previous"
								>
									<span aria-hidden="true">&laquo;</span>
								</a>
							</li>
							<li class="page-item">
								<a
									class="page-link"
									href="#"
								>1</a>
							</li>
							<li class="page-item">
								<a
									class="page-link"
									href="#"
								>2</a>
							</li>
							<li class="page-item">
								<a
									class="page-link"
									href="#"
								>3</a>
							</li>
							<li class="page-item">
								<a
									class="page-link"
									href="#"
									aria-label="Next"
								>
									<span aria-hidden="true">&raquo;</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	></script>
</body>

</html>