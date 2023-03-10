<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Show Count</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
    <div class="main_block">
      <h1 class="mb-4">Counter Assignment</h1>
      <div class="card mb-4">
        <div class="card-body">
          <p>
            You have visited <a href="/">http://your_server</a>
            <c:out value="${currentCount}" /> times.
          </p>
          <a href="/" class="btn" role="button">Test another visit?</a>
          <a href="/add2" class="btn" role="button">Let's visit twice!</a>
        </div>
      </div>
      <a href="/reset" class="btn" role="button" id="reset-button"
        >Reset Counter</a
      >
    </div>
  </body>
</html>
