package testpackage;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;


import testpackage.Book;
import testpackage.*;  
public class BookDao {
	
	public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");  
        }catch(Exception e){System.out.println(e);}  
        return con;  
    }  
	
	//
	public static int insertBook(Book b){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement(  
    "insert into book(title,author,price) values(?,?,?)");  
            ps.setString(1,b.getTitle());  
            ps.setString(2,b.getAuthor());  
            ps.setFloat(3,b.getPrice());  
            
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    } 
	
	//
	public static int updateBook(Book b){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement(  
    "update book set title=?,author=?,price=? where book_id=?");  
            ps.setString(1,b.getTitle());  
            ps.setString(2,b.getAuthor());  
            ps.setFloat(3,b.getPrice());  
            ps.setInt(4,b.getBook_id());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    }  
	
	//
	
	public static int deleteBook(Book b){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from book where book_id=?");  
            ps.setInt(1,b.getBook_id());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
      
        return status;  
    }  
	
	//list all 
	public static List<Book> listAllBooks(){  
        List<Book> list=new ArrayList<Book>();  
          
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from book");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
            	Book b=new Book();  
                b.setBook_id(rs.getInt("book_id"));  
                b.setTitle(rs.getString("title"));  
                b.setAuthor(rs.getString("author"));  
                b.setPrice(rs.getFloat("price"));  
                list.add(b);  
            }  
        }catch(Exception e){System.out.println(e);}  
        return list;  
    }  
	
	//fetch by id
	
	public static Book getBook(int book_id){  
		Book b=null;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from book where book_id=?");  
            ps.setInt(1,book_id);  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                b=new Book();  
                b.setBook_id(rs.getInt("book_id"));  
                b.setTitle(rs.getString("title"));  
                b.setAuthor(rs.getString("author"));  
                b.setPrice(rs.getFloat("price"));  
                 
            }  
        }catch(Exception e){System.out.println(e);}  
        return b;  
    }  
	
}
