
    <%@page import="testpackage.BookDao"%>  
    <jsp:useBean id="b" class="testpackage.Book"></jsp:useBean>  
    <jsp:setProperty property="*" name="b"/>  
    <%  
    BookDao.deleteBook(b);  
    response.sendRedirect("viewBook.jsp");  
    %> 
