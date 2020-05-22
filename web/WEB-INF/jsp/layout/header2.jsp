<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<header><!--상단로고/로그인, 회원가입버튼-->
    <div class="row">
        <div class="col-md 6">
            <h1>Arong_Chuu ♡</h1>
        </div>
        <div class="col-md-6 text-right">
            <h1>
                <button type="button" class="btn btn-primary"
                        data-toggle="modal" data-target="#loginmodal">로그인</button>
                <button class="btn btn-secondary" id="joinbtn">회원가입</button>
            </h1>
        </div>
    </div>
</header>

<nav class="nav navbar-expand-md navbar-light bg-light">
    <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav nav-fill w-100">
            <li class="nav-item">
                <a class="nav-link" href="../intro.jsp">프로젝트소개</a></li>
            <li class="nav-item">
                <a class="nav-link" href="../join/agree1.jsp">회원가입</a></li>
            <li class="nav-item">
                <a class="nav-link" href="../board/list1.jsp">게시판</a></li>
            <li class="nav-item">
                <a class="nav-link" href="../pds/list1.jsp">자료실</a></li>
            <li class="nav-item">
                <a class="nav-link" href="../gallery/list1.jsp">갤러리</a></li>
            <li class="nav-item">
                <a class="nav-link" href="../admin.jsp">관리자</a></li>
        </ul>
    </div>
</nav>