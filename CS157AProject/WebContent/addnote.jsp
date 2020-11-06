<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> User Add Note Page </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${note != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${note == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${note != null}">
            			Edit Note
            		</c:if>
						<c:if test="${note == null}">
            			Add New Note
            		</c:if>
					</h2>
				</caption>

			<fieldset class="form-group">
					<label>Principle ID</label> <input type="text"
						value="<c:out value='${note.principle_id}' />" class="form-control"
						name="principle_id" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>Note ID</label> <input type="text"
						value="<c:out value='${note.note_id}' />" class="form-control"
						name="note_id" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Note title</label> <input type="text"
						value="<c:out value='${note.title}' />" class="form-control"
						name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>Note Content</label> <input type="text"
						value="<c:out value='${note.content}' />" class="form-control"
						name="country">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>