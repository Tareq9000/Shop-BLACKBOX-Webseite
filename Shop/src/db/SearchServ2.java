package db;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daten.Schuh;

/**
 * Servlet implementation class SearchServ2
 */
@WebServlet("/SearchServ2")
public class SearchServ2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			RequestDispatcher rd = request.getRequestDispatcher("Kleider.jsp");
			request.setAttribute("listSearch", listSearch);
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("Kleider.jsp");
			request.setAttribute("listSearch", null);
			rd.forward(request, response);
		}
		
		
		
	}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
