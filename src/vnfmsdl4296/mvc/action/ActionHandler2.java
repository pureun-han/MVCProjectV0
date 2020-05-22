package vnfmsdl4296.mvc.action;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface ActionHandler2 {
    String execute(
            HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException;
}