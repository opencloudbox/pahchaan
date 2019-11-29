package quoteDaos;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;

import beans.quoteBeans;
import beans.quoteBeans.*;
public class quoteDao {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quotewala","root","root");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(quoteBeans q){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	      //  PreparedStatement ps=con.prepareStatement("insert into quote(quote,writername,like,dislike,photo) values(?,?,?,?,?)");  
	        PreparedStatement ps=con.prepareStatement("insert into quote(title,quote,photo,date) values(?,?,?,?)");
	        ps.setString(1,q.getTitle());  
	        ps.setString(2,q.getQuote());  
	        ps.setString(3,q.getPhoto()); 
	        ps.setString(4, q.getDate());
			/*
			 * if(q == null || q != null) { ps.setString(3,q.getLike());
			 * ps.setString(4,q.getDislike()); ps.setString(5,q.getPhoto()); }
			 */
	        status=ps.executeUpdate();  
	    }catch(Exception e)
	    {
	    	System.out.println(e);
	    }  
	    return status;  
	}
	
	
	public static List<quoteBeans> getAllRecords(){  
	    List<quoteBeans> list=new ArrayList<quoteBeans>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from quote order by id desc");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	quoteBeans u=new quoteBeans();  
	            u.setTitle(rs.getString("title"));  
	            u.setQuote(rs.getString("quote")); 
	            u.setPhoto(rs.getString("photo")); 
	          
	           
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  

}
