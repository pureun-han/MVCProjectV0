package vnfmsdl4296.mvc.action;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CheckmeHandler implements ActionHandler2 {

    // 클라이언트의 요청이 /index.do라면
    // /WEB-INF/views 아래의 index.jsp를 출력
    @Override
    public String execute(
            HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException {
        String viewPage = "1|/WEB-INF/jsp/layout/layout.jsp";

        req.setAttribute("action","../join/checkme1.jsp");

        return viewPage;
    }
}