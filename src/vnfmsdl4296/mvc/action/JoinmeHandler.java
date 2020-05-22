package vnfmsdl4296.mvc.action;

import vnfmsdl4296.service.MemberService;
import vnfmsdl4296.vo.MemberVO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class JoinmeHandler implements ActionHandler2 {

    // 클라이언트의 요청이 /index.do라면
    // /WEB-INF/views 아래의 index.jsp를 출력
    @Override
    public String execute(
            HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException {
        String viewPage = "1|/WEB-INF/jsp/layout/layout.jsp";

        if (req.getMethod().equalsIgnoreCase("post")) {

            req.setCharacterEncoding("utf-8");

            String name = req.getParameter("name");
            String jumin = req.getParameter("jumin") + "-" + req.getParameter("jumin2");
            String uid = req.getParameter("uid");
            String pwd = req.getParameter("pwd");
            String zipcode = req.getParameter("zip1") + "-" + req.getParameter("zip2");
            String addr1 = req.getParameter("addr1");
            String addr2 = req.getParameter("addr2");
            String email = req.getParameter("email1") + "@" + req.getParameter("email2");
            String mobile = req.getParameter("ph1") + "-" + req.getParameter("ph2") + "-" + req.getParameter("ph3");

            MemberVO m = new MemberVO(
                    null, name, jumin, uid, pwd, zipcode, addr1, addr2, email, mobile, null);

            MemberService msrv = new MemberService();
            msrv.newMember(m);

            viewPage = "2|/join/joinok1.do";
        } else {
            req.setAttribute("action", "../join/joinme1.jsp");
        }

        return viewPage;
    }
}