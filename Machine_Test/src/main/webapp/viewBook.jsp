
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="testpackage.BookDao,testpackage.*,java.util.*"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
      
    <h1>Question List</h1>  
      
    <%  
    List<Book> list=BookDao.listAllBooks();  
    request.setAttribute("list",list);  
    %>  
      
    <table border="1" width="90%">  
    <tr><th>Book Id</th><th>Title</th><th>Author</th><th>Price</th>  
    <th>Edit</th><th>Delete</th></tr>  
    <c:forEach items="${list}" var="b">  
    <tr><td>${b.getBook_id()}</td><td>${b.getTitle()}</td><td>${b.getAuthor()}</td>  
    <td>${b.getPrice()}</td>
    <td><a href="editBookform.jsp?id=${b.getBook_id()}">Edit Book</a></td>  
    <td><a href="deleteBook.jsp?id=${b.getBook_id()}">Delete Book</a></td></tr>  
    </c:forEach>  
    </table>  
    <br/><a href="addBookform.jsp">Add New Book</a>  
      
</body>
</html>