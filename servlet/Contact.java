package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/servlet/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(
			HttpServletRequest request, HttpServletResponse response
			) throws ServletException, IOException {
		
			//文字化け対策
			request.setCharacterEncoding("UTF-8");
			
		
			String username = request.getParameter("username");
			String company = request.getParameter("company");
			String email = request.getParameter("email");
			String content = request.getParameter("content");
			System.out.println("受信データ　-> 氏名：" + username + 
					", 会社名：" + company + ",メールアドレス" + email + ",内容" + content);
			
			String[] merumaga = request.getParameterValues("merumaga");
			
			//${pageContext.request.contextPath}に対する命令
			response.sendRedirect(request.getContextPath() + "/ServletTest/finish.jsp");
			
	}
	
	protected void doGet(
			HttpServletRequest request, HttpServletResponse response
			) throws ServletException, IOException {
			doPost(request, response);
	}

}
