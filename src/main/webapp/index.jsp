<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.accessibility.AccessibleRelation" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"%>

  <div class="box" id="heading">
    <h1> My ToDo List </h1>
  </div>

  <div class="box">

        <c:forEach var="item" items="${items}">
        <form action="" method="post">
            <div class="item">
                <input type="checkbox" name="checkbox" value="" onChange="this.form.submit()">
                <p> <c:out value="${item}"/> </p>
            </div>
            <input type="hidden" name="listName" value=""></input>
        </form>
        </c:forEach>

        <form class="item" action="add" method="post">
            <input type="text" name="newItem" placeholder="New Item" autocomplete="off">
            <button type="submit" name="list" value="">+</button>
        </form>

  </div>

<%@include file="footer.jsp"%>
