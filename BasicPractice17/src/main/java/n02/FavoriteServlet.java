package n02;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import beans.Favorite;

@WebServlet("/n02/FavoriteServlet")
public class FavoriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String url = request.getParameter("url");

		//変数Sessionを取得
		HttpSession session = request.getSession();

		//セッションから既存のリストを取得
		@SuppressWarnings("unchecked")
		List<Favorite> favList = (List<Favorite>) session.getAttribute("favList");

		if (favList == null) {
			favList = new ArrayList<>();
		}

		//新たな情報をリストに追加
		favList.add(new Favorite(name, url));

		//リストをセッションに再保存
		session.setAttribute("favList", favList);

		//登録後は一覧表示画面にリダイレクト
		response.sendRedirect(request.getContextPath() + "/n02/favorites.jsp");

	}
}