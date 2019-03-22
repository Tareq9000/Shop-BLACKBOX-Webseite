package db;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import daten.Schuh;

import java.util.ArrayList;

/**
 * Servlet implementation class SearchServ
 */
@WebServlet("/SearchServ")
public class SearchServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		session.setAttribute("schuhe", null);
		Object o = session.getAttribute("schuhe");
		ArrayList<Schuh> list = null;
		if (o == null) {
			DAO dao = new DAO();
			list = dao.selectTable1();
			session.setAttribute("schuhe", list);
		} else {
			list = (ArrayList<Schuh>) o;
		}
		
		ArrayList<Schuh> listSearch = new ArrayList<Schuh>();
		
		String search = request.getParameter("search");
		System.out.println(request.getParameter("schuhe"));

		if (!search.equals(null)) {
			for (int i = 0; i < list.size(); i++) {
				if (search.equals(list.get(i).getName())) {
					listSearch.add(list.get(i));
				}
			}
			RequestDispatcher rd = request.getRequestDispatcher("Schuhe.jsp");
			request.setAttribute("listSearch", listSearch);
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("Schuhe.jsp");
			request.setAttribute("listSearch", null);
			rd.forward(request, response);
		}
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
