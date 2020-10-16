package jsptest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletLife
 */
@WebServlet("/servletlife")
public class Servletlife extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public Servletlife() {
        super();
        System.out.println("생성자");
    }

	public void init(ServletConfig config) throws ServletException {
		 System.out.println("초기화");
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 System.out.println("서비스");
		 super.service(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("겟 방식");
		PrintWriter w = response.getWriter();
		w.println("<h1>JSP 예제</h1>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("포스트 방식");
		
	}
	public void destroy() {
		 System.out.println("소멸자");
	}
}
