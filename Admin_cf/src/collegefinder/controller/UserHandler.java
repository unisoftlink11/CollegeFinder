package collegefinder.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.Vector;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import collegefinder.dao.DAO;
import collegefinder.model.*;
import collegefinder.dbcon.DB;




/**
 * Servlet implementation class UserHandler
 */
@WebServlet("/UserHandler")
public class UserHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String LIST1 ="/bsccsit.jsp";
	private static String LIST2= "/bca.jsp";
	private static String LIST3="/bim.jsp";
    /**
     * Default constructor. 
     */
	private DAO dao = new DAO();
    public UserHandler() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		String cname= request.getParameter("cname");
		String action = request.getParameter("action");

		String username = request.getParameter("username");
		String password= request.getParameter("password");
		
		User user = new User();
		//Insert
		String redirect= "";
		if(!(cname==null) && command.equalsIgnoreCase("save_bsccsit")) {
			user.setId(Integer.parseInt(request.getParameter("id")));
			user.setCollegeName(request.getParameter("cname"));
			user.setCollegeAddress(request.getParameter("cadd"));
			user.setUniversity(request.getParameter("university"));
			user.setLink(request.getParameter("link"));
			dao.insertCInfo(user);
			redirect= LIST1;
			request.setAttribute("users", dao.getAllUser());
			System.out.println("record saved successfully");
		}
		
		else if(!(cname==null) && command.equalsIgnoreCase("save_bca")) {
			user.setId(Integer.parseInt(request.getParameter("id")));
			user.setCollegeName(request.getParameter("cname"));
			user.setCollegeAddress(request.getParameter("cadd"));
			user.setUniversity(request.getParameter("university"));
			user.setLink(request.getParameter("link"));
			dao.insertbca(user);
		    redirect=LIST2;  
		    request.setAttribute("users", dao.getAllUser1());
			System.out.println("record saved successfully");
		}
		
		else if(!(cname==null) && command.equalsIgnoreCase("save_bim")) {
			user.setId(Integer.parseInt(request.getParameter("id")));
			user.setCollegeName(request.getParameter("cname"));
			user.setCollegeAddress(request.getParameter("cadd"));
			user.setUniversity(request.getParameter("university"));
			user.setLink(request.getParameter("link"));
			dao.insertbim(user);
		    redirect=LIST3;  
		    request.setAttribute("users", dao.getAllUser2());
			System.out.println("record saved successfully");
		}
		//Contact form
		else if(command.equalsIgnoreCase("contact")) {
			user.setName(request.getParameter("name"));
			user.setEmail(request.getParameter("email"));
			user.setMessage(request.getParameter("message"));
			dao.contact(user);
			redirect="/contact.html";
			System.out.println("contact saved successfully");
		}
		//Delete
		else if(command.equalsIgnoreCase("delete_bsccsit")){
			String userid= request.getParameter("id");	
			int uid = Integer.parseInt(userid);
			dao.deleteCInfo(uid);
			redirect=LIST1;
			request.setAttribute("users", dao.getAllUser());
			System.out.println("record deleted Successfully");

		}
		
		
		else if(command.equalsIgnoreCase("delete_bca")){
			String userid= request.getParameter("id");	
			int uid = Integer.parseInt(userid);
			dao.deletebca(uid);
			redirect=LIST2;
			request.setAttribute("users", dao.getAllUser1());
			System.out.println("record deleted Successfully");

		}
		
		else if(command.equalsIgnoreCase("delete_bim")){
			String userid= request.getParameter("id");	
			int uid = Integer.parseInt(userid);
			dao.deletebim(uid);
			redirect=LIST3;
			request.setAttribute("users", dao.getAllUser2());
			System.out.println("record deleted Successfully");

		}
		
		//Update
		else if(command.equalsIgnoreCase("editform_bsccsit")) {
			redirect ="/update_bsccsit.jsp";
			}
		else if(command.equalsIgnoreCase("update_bsccsit")) {
			User use = new User(); 
			use.setId(Integer.parseInt(request.getParameter("id")));
			use.setCollegeName(request.getParameter("cname")); 
			use.setCollegeAddress(request.getParameter("cadd")); 
			use.setUniversity(request.getParameter("university"));
			use.setLink(request.getParameter("link"));
			dao.updateCInfo(use);
			redirect=LIST1;
			request.setAttribute("users", dao.getAllUser());
			System.out.println("record updated Successfully");
		}
			
		else if(command.equalsIgnoreCase("editform_bca")) {
				redirect ="/update_bca.jsp";
				}
		else if(command.equalsIgnoreCase("update_bca")) {
				User use = new User(); 
				use.setId(Integer.parseInt(request.getParameter("id")));
				use.setCollegeName(request.getParameter("cname")); 
				use.setCollegeAddress(request.getParameter("cadd")); 
				use.setUniversity(request.getParameter("university"));
				use.setLink(request.getParameter("link"));
				dao.updatebca(use);
				redirect=LIST2;
				request.setAttribute("users",dao.getAllUser1());
				System.out.println("record updated Successfully");
			}
				
		else if(command.equalsIgnoreCase("editform_bim")) {
					redirect ="/update_bim.jsp";
					}
		else if(command.equalsIgnoreCase("update_bim")) {
					User use = new User(); 
				    use.setId(Integer.parseInt(request.getParameter("id")));
					use.setCollegeName(request.getParameter("cname")); 
					use.setCollegeAddress(request.getParameter("cadd")); 
					use.setUniversity(request.getParameter("university"));
					use.setLink(request.getParameter("link"));
					dao.updatebim(use);
					redirect=LIST3;
					request.setAttribute("users",dao.getAllUser2());
					System.out.println("record updated Successfully");	
			
		}
		
		//Login
		else if (!((username)==null) && command.equalsIgnoreCase("login")) {
			user.setUsername(request.getParameter("username"));
			user.setPassword(request.getParameter("password"));
			if(dao.validUser(user)) {
				request.setAttribute("useremail",user.getUsername());
				//request.getSession().setAttribute("password", password);
				redirect="/index.html";
				System.out.println("Login successsfullyl");
			}
			else {
					redirect="/404.html";
			}	
			
		}
		
		//Search
		else if(command.equalsIgnoreCase("search")) {
			String course = request.getParameter("course"); 
			String uv= request.getParameter("uv");
			System.out.println(course);
			System.out.println(uv);
			request.setAttribute("users", dao.search(course,uv));
			redirect="/searchcard.jsp";			
		}
		

         else if(command.equalsIgnoreCase("searchdata")) {
			String searchkey = request.getParameter("searchkey");
			request.setAttribute("userList", dao.search(searchkey));
			redirect="/searchdata.jsp";
		}
		
		//scholarship_bscsit
         else if(command.equalsIgnoreCase("scholarship_bsccsit")) {
			request.setAttribute("collegemodel", dao.Scholar(1));
			request.setAttribute("collegemode", dao.ScholarAfter(1));
			redirect="/scholarship_bsccsit.jsp";
		
		}
         else if (command.equalsIgnoreCase("scholarship_bca")) {
        	 request.setAttribute("collegemodel", dao.Scholar(2));
        	request.setAttribute("collegemode",dao.ScholarAfter(2));
        	 redirect="/scholarship_bca.jsp";
        	 
         }
         else if (command.equalsIgnoreCase("scholarship_bim")) {
        	 request.setAttribute("collegemodel2", dao.Scholar(3));
        	request.setAttribute("collegemode2",dao.ScholarAfter(3));
        	 redirect="/scholarship_bim.jsp";
        	 
         }
		
		
        //knapsack
         else if (command.equalsIgnoreCase("search1")) {
        	 Connection conn= null;
        	 ResultSet rs = null;
        	 conn=DB.getConnection();
        	 int[] wt= null;
        	 int size=0;
        	 int[] val=null;
        	 try {
        		 String sql="select wt from knapsack";
        	     PreparedStatement ps = conn.prepareStatement(sql);
        	      rs = ps.executeQuery();
        	      Vector<Integer> result = new Vector<Integer>();
        	      rs.beforeFirst();
        	      while(rs.next()){
        	      result.add(rs.getInt(1));
        	      size = result.size();
        	      wt = new int[size];   
        	      }
        	      Integer[] wts = result.toArray(new Integer[size]);
        	      for (int n = 0; n < size; ++n) {
      	    	    wt[n] = wts[n];
      	    	    System.out.println(wt[n]);
      	    	}
    
        	 }catch(Exception e) {
        		 e.printStackTrace();
        	 }
        	 try {
        		 String sql="select val from knapsack";
        	     PreparedStatement ps = conn.prepareStatement(sql);
        	      rs = ps.executeQuery();
        	      Vector<Integer> result = new Vector<Integer>();
        	      rs.beforeFirst();
        	      while(rs.next()){
        	      result.add(rs.getInt(1));
        	      size = result.size();
        	      val = new int[size];   
        	      }
        	      Integer[] values = result.toArray(new Integer[size]);
        	      for (int n = 0; n < size; ++n) {
      	    	    val[n] = values[n];
      	    	    System.out.println(val[n]);
      	    	}
    
        	 }catch(Exception e) {
        		 e.printStackTrace();
        	 }
        	 
        	    int  w = Integer.parseInt(request.getParameter("search2"));
        	    int n = val.length; 
        	    String resultknap = Integer.toString(dao.knapSack(w, wt, val, n));
        	    String resultknapsack = dao.resultKnapSack(resultknap);
        	    request.setAttribute("name", resultknapsack);
        	    System.out.println(resultknapsack);
        	    redirect="/knapsack.jsp";
        	    
        	 
         }

	
		
			RequestDispatcher rd = request.getRequestDispatcher(redirect);
			rd.forward(request,response);		   		   
	}
	
	
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
