<%@page import="testpackage.BookDao"%>  
    <jsp:useBean id="b" class="testpackage.Book"></jsp:useBean>  
    <jsp:setProperty property="*" name="b"/>  
    <%  
    int i=BookDao.updateBook(b);  
    response.sendRedirect("viewBook.jsp");  
    %>  
