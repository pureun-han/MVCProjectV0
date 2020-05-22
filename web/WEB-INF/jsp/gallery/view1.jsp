<%@page pageEncoding="UTF-8" %>

    <!--메인영역 시작-->
    <div id="main">
        <div class="margin30">
            <i class="fa fa-picture-o fa-2x"> 갤러리</i>
            <hr>
        </div> <!--타이틀-->


        <div class="row margin1050">
            <div class="col-6">
                <button type="button" id="prevbd" class="btn btn-light" style="margin-left: -15px;">
                    <i class="fa fa-chevron-left"></i> 이전게시물
                </button>
                <button type="button" id="nextbd" class="btn btn-light">
                    <i class="fa fa-chevron-right"></i> 다음게시물
                </button>
            </div>
            <div class="col-6 text-right">
                <button type="button" id="newbd" class="btn btn-light" style="margin-right: -15px;">
                    <i class="fa fa-plus-circle"></i> 새글쓰기
                </button>
            </div>
        </div><!--버튼들-->

        <div class="row margin1050">
            <table>
                <tr>
                    <th colspan="2" style="border-bottom: 3px solid black; background: whitesmoke">
                        <h3>아롱이 귀여워요</h3></th>
                </tr>
                <tr style="background: lightgray">
                    <td class="text-left">아롱맘</td>
                    <td class="text-right">2020.05.04</td>
                </tr>
                <tr style="background: whitesmoke;">
                    <td colspan="2" style="border-bottom: 3px solid black;" class="text-left">
                        <img src="../img/arong/arong3.jpg" class="img-fluid"><br>
                        <img src="../img/arong/arong4.jpg" class="img-fluid"><br>
                        <img src="../img/arong/arong5.jpg" class="img-fluid"><br>
                        <img src="../img/arong/arong1.jpg" class="img-fluid"><br>
                    </td>
                </tr>
                <tr><td class="text-left">이미지1</td><td>abcd.jpg (123kb, 99회 다운로드)</td></tr>
                <tr><td class="text-left">이미지2</td><td>1234.png (1.23mb, 1회 다운로드)</td></tr>
            </table>
        </div><!--본문-->

        <div class="row margin1050">
            <div class="col-6">
                <button type="button" id="updbd" class="btn btn-warning" style="margin-left: -15px;">
                    <i class="fa fa-pencil"></i> 수정하기
                </button>
                <button type="button" id="delbd" class="btn btn-danger">
                    <i class="fa fa-trash-o"></i> 삭제하기
                </button>
            </div>
            <div class="col-6 text-right">
                <button type="button" id="lstbd" class="btn btn-light" style="margin-right: -15px;">
                    <a href="list1.html" class="page-link" style="color: black;">
                    <i class="fa fa-list"></i> 목록으로
                    </a>
                </button>
            </div>
        </div><!--버튼들-->

        <div class="row margin1050">
            <h3 style="margin-top: 45px;"><i class="fa fa-commenting"></i> 나도 한마디</h3>
            <table class="table" style="border-top: 3px solid black; border-bottom: 3px solid black;">
                <tr>
                    <td style="width: 25%;"><h4>arong2</h4></td>
                    <td><div style="background: yellow; padding: 5px;">2018-08-15 20:20:20</div>
                        <p style="padding: 5px;">ㅇㄹㅇ ㄱㅇㅇ ㅇㅈ? ㅇ ㅇㅈ</p>

                        <ul class="list-unstyled"><!--댓글의 댓글 시작-->
                            <li>
                                <div style="background: greenyellow; padding: 5px;">
                                    <span><b>vnfmsdl4296</b></span>
                                    <span style="float:right;">2018-08-15 20:25:25</span></div>
                                <p style="padding: 5px;">아롱아 밥먹어라 왈왈</p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;"><h4>arong2</h4></td>
                    <td><div>2018-08-15 20:20:20</div>
                        <p>ㅇㄹㅇ ㄱㅇㅇ ㅇㅈ? ㅇ ㅇㅈ</p>
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;"><h4>arong2</h4></td>
                    <td><div>2018-08-15 20:20:20</div>
                        <p>ㅇㄹㅇ ㄱㅇㅇ ㅇㅈ? ㅇ ㅇㅈ</p>
                    </td>
                </tr>
            </table>
        </div><!--댓글쓰기-->

        <div class="row margin1050">
            <form class="card card-body bg-light" style="margin: 30px 0;">
                <div class="form-group row">
                    <label style="margin:auto;">로그인하세요</label>
                    <textarea id="comment" rows="10" class="form-control col-7"></textarea>
                    <button type="button" id="bdcmt" class="btn btn-secondary" style="margin: auto;">
                        <i class="fa fa-commenting"></i> 댓글 쓰기
                    </button>
                </div>
            </form>
        </div><!--댓글쓰기-->


    </div>
    <!--메인영역 끝-->


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="../bs4/js/bootstrap.min.js"></script>
