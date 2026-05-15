package chapter4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Practice02
 */
@WebServlet("/Practice02")
public class Practice02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Practice02() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		package chapter4;

		import java.io.IOException;
		import java.io.PrintWriter;

		import jakarta.servlet.ServletException;
		import jakarta.servlet.annotation.WebServlet;
		import jakarta.servlet.http.HttpServlet;
		import jakarta.servlet.http.HttpServletRequest;
		import jakarta.servlet.http.HttpServletResponse;

		@WebServlet("/chapter4/practice02")
		public class Practice02 extends HttpServlet {
			private static final long serialVersionUID = 1L;

			protected void doGet(HttpServletRequest request, HttpServletResponse response) 
					throws ServletException, IOException {
				
				// 文字調整
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				
				// ブラウザの言語設定
				// getHeader("accept-language") を使うと、"ja,en-US;q=0.9..." のような文字列が取れます
				String lang = request.getHeader("accept-language");
				
				String greeting;
				
				// 言語の切り替え
				if (lang != null && lang.startsWith("ja")) {
					greeting = "こんにちは！";
				} else {
					greeting = "Hello!";
				}
				
				// 出力
				out.println("<!DOCTYPE html>");
				out.println("<html>");
				out.println("<head><meta charset='UTF-8'></head>");
				out.println("<body>");
				out.println("<p>" + greeting + "</p>");
				out.println("</body>");
				out.println("</html>");
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
