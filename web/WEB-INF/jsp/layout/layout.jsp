<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../bs4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bs4/fa47/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/semiproject.css">
    <title>bootstrap 4 - index</title>
    <style>

    </style>
</head>
<body>
    <div class="container">
        <jsp:include page="header.jsp" />

        <!--메인영역 시작-->
        <%--<jsp:include page="${param.action}" />--%>
        <jsp:include page="${action}" />
        <!--메인영역 끝-->

        <jsp:include page="footer.jsp" />

    </div>


<!--로그인 모달 시작-->
    <div class="modal fade" role="dialog" id="loginmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title">로그인</h3>
                    <button class="btn btn-light" type="button"
                            data-dismiss="modal">닫기</button>
                </div>
                <div class="modal-body">
                    <form id="loginfrm" method="post" action="login.do">
                        <div class="form-group row text-center">
                            <label for="uid" class="col-form-label col-4">아이디</label>
                            <input type="text" id="uid" name="uid" class="form-control col-6">
                        </div>
                        <div class="form-group row text-center">
                            <label for="pwd" class="col-form-label col-4">비밀번호</label>
                            <input type="password" id="pwd" namd="pwd" class="form-control col-6">
                        </div>
                        <div class="form-group row text-center">
                            <div class="col-4"></div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input">
                                <label class="form-check-label">로그인 상태 유지</label>
                            </div>
                        </div>
                    </form>
                    <div class="modal-footer justify-content-center">
                            <button type="button" id="loginbtn" class="btn btn-primary offset-4">로그인</button>
                            <button type="button" id="findlogin" class="btn btn-secondary" style="margin-left: 5px;">아이디/비밀번호 찾기</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--로그인 모달 끝-->



    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="../bs4/js/bootstrap.min.js"></script>
<script src="../js/board.js"></script>
<script src="../js/join.js"></script>
    <script>
        // 회원가입 버튼
        $('#joinbtn').on('click', function () {
            location.href = 'join/agree1.do';
        });

        // 로그인 하기
        $('#loginbtn').on('click', function () {
            if ($('#uid').val() == '')
                alert('아이디를 입력하세요.');
            else if ($('#pwd').val() == '')
                alert('비밀번호를 입력하세요.');
            else
                $('#loginfrm').submit();
        });

        let joinbtn = document.getElementById("joinbtn");
        joinbtn.addEventListener('click', function () {
            location.href='join/agree1.jsp';
        });
    </script>

</body>
</html>