package chapter4;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/chapter4/practice01")
public class Practice01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		//文字コードの設定
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//時刻の取得
		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy年MM月dd日(E) HH時mm分ss秒");
		String formattedNow = now.format(dtf);
		
		// 出力
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head><meta charset='UTF-8'></head>");
		out.println("<body>");
		out.println("<p>現在の時刻は：" + formattedNow + "です</p>");
		out.println("</body>");
		out.println("</html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}
}