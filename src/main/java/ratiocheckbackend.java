

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ratiocheck")
public class ratiocheckbackend extends HttpServlet {
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		float salary = Integer.parseInt(request.getParameter("sal"));
		float need = Integer.parseInt(request.getParameter("need"));
		float want = Integer.parseInt(request.getParameter("want"));
		float saving = Integer.parseInt(request.getParameter("sav"));
		
		 need = (need/salary)*100;
	     want = (want/salary)*100;
	     saving = 100 -(need+want);
	     
	     request.setAttribute("salary", salary);
	     request.setAttribute("need", need);
	     request.setAttribute("want", want);
	     request.setAttribute("saving", saving);
	     
	     if(saving >= 20){
	    	 request.getRequestDispatcher("/rightpage.jsp").forward(request, response);
	     }
	     else{
	    	 request.getRequestDispatcher("elaboratepage.jsp").forward(request ,response);
	     }
	}

}
