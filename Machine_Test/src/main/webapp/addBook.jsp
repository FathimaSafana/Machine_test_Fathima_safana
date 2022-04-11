 <%@page import="testpackage.BookDao"%>  
    <jsp:useBean id="b" class="testpackage.Book"></jsp:useBean>  
    <jsp:setProperty property="*" name="b"/>  
      
    <%  
    int i=BookDao.insertBook(b);  
    if(i>0){  
    response.sendRedirect("addBook-success.jsp");  
    }else{  
    response.sendRedirect("addBook-error.jsp");  
    }  
    %> 