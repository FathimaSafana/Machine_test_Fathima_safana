
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit book form</title>
</head>
<body>
<%@page import="testpackage.*,testpackage.*"%>  
      
     <%  
    String id=request.getParameter("book_id");  
    Book b=BookDao.getBook(Integer.parseInt(id));  
    %>
      
    <h1>Edit book Form</h1>  
    <form action="editBook.jsp" method="post">  
    <input type="hidden" name="book_id" value="<%=b.getBook_id() %>"/>  
    <table>  
    <tr><td colspan="2">Title:</td><td>  
    <input type="text" name="title" value="<%= b.getTitle()%>"/></td></tr>  
    <tr><td colspan="2">Author:</td><td>  
    <input type="text" name="author" value="<%= b.getAuthor()%>"/></td></tr> 
    <tr><td colspan="2">Price:</td><td>  
    <input type="text" name="price" value="<%= b.getPrice()%>"/></td></tr> 
    
    
    </td></tr>  
    <tr><td colspan="2"><input type="submit" value="Edit Book"/></td></tr>  
    </table>  
    </form> 
</body>
</html>