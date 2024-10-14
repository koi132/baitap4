package ltweb.controllers;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import ltweb.Models.UserModel;
import ltweb.services.IUserService;
import ltweb.services.impl.UserService;
import ltweb.utils.Constant;

@WebServlet(urlPatterns = { "/forgot-password" })
public class ForgotPasswordController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher(Constant.FORGOTPASSWORD).forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("name");
        String password = req.getParameter("pass");
        
        IUserService service = new UserService();
                       
        String alertMsg = "";        

        if (username == null || username.isEmpty()) {
            alertMsg = "Username không được để trống!";
            req.setAttribute("alert", alertMsg); 
            req.getRequestDispatcher(Constant.FORGOTPASSWORD).forward(req, resp);
            
        } else if (password == null || password.isEmpty()) {
            alertMsg = "Password không được để trống!";
            req.setAttribute("alert", alertMsg); 
            req.getRequestDispatcher(Constant.FORGOTPASSWORD).forward(req, resp);
            
        } else { 	
        	UserModel name = service.FindByUserName(username);
    
        	if (name == null) {
                alertMsg = "Username không tồn tại!";
                req.setAttribute("alert", alertMsg); 
                req.getRequestDispatcher(Constant.FORGOTPASSWORD).forward(req, resp);
                
            } else {
            	service.update(username,password);
                alertMsg = "Mật khẩu đã được thay đổi thành công!";
                req.setAttribute("alert", alertMsg); 
                req.getRequestDispatcher(Constant.LOGIN).forward(req, resp);
            }
        }
    }
}

