package ControllerAdmin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.NewsDAOImpl;


@WebServlet("/NewsServlet_Del")
public class NewsServlet_Del extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static NewsDAOImpl newsDAO = new NewsDAOImpl();   
    
    public NewsServlet_Del() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		String ID_News = request.getParameter("ID_News");
		String url = "";
		try {
			switch (action) {
			case "Delete":
				newsDAO.deleteNews(ID_News);
				url = "/Admin/News_manager.jsp";
				break;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
