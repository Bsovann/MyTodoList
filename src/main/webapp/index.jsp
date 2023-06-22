<%@include file="header.jsp"%>

  <div class="box" id="heading">
    <h1> My ToDo List </h1>
  </div>

  <div class="box">

    <form action="/delete" method="post">
      <div class="item">
        <input type="checkbox" name="checkbox" value="" onChange="this.form.submit()">
        <p></p>
      </div>
      <input type="hidden" name="listName" value=""></input>
    </form>

      <form class="item" action="index.jsp" method="post">
        <input type="text" name="newItem" placeholder="New Item" autocomplete="off">
        <button type="submit" name="list" value="">+</button>
      </form>
  </div>

<%@include file="footer.jsp"%>
