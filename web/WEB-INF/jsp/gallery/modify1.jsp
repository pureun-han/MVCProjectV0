<%@page pageEncoding="UTF-8" %>

    <!--메인영역 시작-->
    <div id="main">
        <div class="margin30">
            <i class="fa fa-picture-o fa-2x"> 갤러리</i>
            <hr>
        </div> <!--타이틀-->


        <div class="row margin1050">
            <div class="col-6">
                <h4><i class="fa fa-plus-circle"></i> 수정하기</h4>
            </div>
            <div class="col-6 text-right">
                <button type="button" id="lstbd" class="btn btn-light" style="margin-right: -15px;">
                    <i class="fa fa-plus-circle"></i> 목록으로
                </button>
            </div>
        </div><!--버튼들-->

        <div class="row margin1050">
            <form class="card card-body bg-light">
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">제목</label>
                    <input type="text" id="title" name="title" class="form-control col-9"
                           value="[날씨]&quot;숨이 턱턱&quot;">
                </div><!--제목-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">작성자</label>
                    <input type="text" id="userid" name="userid" class="form-control col-9" readonly value="작성자입니다">
                </div><!--작성자 (실제로는 안씀)-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">본문내용</label>
                    <textarea id="contents" name="contents" rows="15" class="form-control col-9">아 수업 너무 빨라요;
                    </textarea>
                </div><!--본문내용-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">파일첨부</label>
                    <div class="custom-file col-7">
                        <input type="file" id="file1" name="files" class="custom-file-input">
                        <label class="custom-file-label">첨부할 파일을 선택하세요</label>
                    </div>
                    <div class="custom-file col-7 offset-2">
                        <input type="file" id="file2" name="files" class="custom-file-input">
                        <label class="custom-file-label"></label>
                    </div>
                    <div class="custom-file col-7 offset-2">
                        <input type="file" id="file3" name="files" class="custom-file-input">
                        <label class="custom-file-label"></label>
                    </div>
                </div><!--첨부하기-->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">자동입력 방지</label>
                    <img src="../img/google_recaptcha.gif" width="50%" height="50%" style="margin-left: -5px;">
                </div><!--자동입력방지-->

                <div class="row justify-content-center" style="margin-top: 85px;">
                    <hr style="width: 90%;color: gray;">
                    <button type="button" class="btn btn-primary" style="margin-right: 10px;">
                        <i class="fa fa-pencil-square-o"></i> 수정완료
                    </button>
                    <button type="button" class="btn btn-danger">
                        <i class="fa fa-remove"></i> 취소하기
                    </button>
                </div><!--버튼-->

            </form>
        </div><!--새글쓰기 폼-->

    </div>
    <!--메인영역 끝-->

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="../bs4/js/bootstrap.min.js"></script>
