<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head><center> 
<body>
<a href="viewBook.jsp">View All Books</a><br/>  
      
    <h1>Add New Books</h1>  
    <form action="addBook.jsp" method="post">  
   <table>  
    <tr><td colspan="2">Title:</td><td><input type="text" name="title"/></td></tr> 
	<tr><td colspan="2">Author:</td><td><input type="text" name="author"/></td></tr>
	<tr><td colspan="2">Price:</td><td><input type="text" name="price"/></td></tr>
	
    
     
    </td></tr>  
    <tr><td colspan="2"><input type="submit" value="Add Book"/></td></tr>  
    </table> </center> 
    </form> 
</body>
</html>