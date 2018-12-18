import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Calculate extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7202605199917019105L;

	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException
	{
		PrintWriter pw = null;
		long result=0;
		 try {
			 pw=response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 response.setContentType("text/html");       
		 String s1=request.getParameter("input1");
		 String s2=request.getParameter("input2");
		 
		 switch (request.getParameter("button1")) {
		case "+":
			result=Integer.parseInt(s1)+Integer.parseInt(s2);
			// pw.println(result);
			break;

		case "-":
			result=Integer.parseInt(s1)-Integer.parseInt(s2);
			 //pw.println(result);
			break;
		case "*":
			result=Integer.parseInt(s1)*Integer.parseInt(s2);
			 //pw.println(result);
			break;
		case "/":
			result=Integer.parseInt(s1)/Integer.parseInt(s2);
			// pw.println(result);
			break;
		default:
			break;
		}
		 
		  
		 try
		 {
		 HttpSession session = request.getSession();
		 String s=result+"";
		 
		 session.setAttribute("result",s );
		 session.setAttribute("input1",s1 );
		 session.setAttribute("input2",s2 );
		 response.sendRedirect("Display1.jsp");  
		 }catch(Exception e)
		 { }
		 
    }

}
