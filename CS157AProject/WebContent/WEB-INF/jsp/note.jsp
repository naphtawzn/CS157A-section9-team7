<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Learn To Seek Truth | Note</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<div class="container">
			<div id="branding">
				<h1>
					<span class="highlight">Learn</span> ToSeekTruth
				</h1>
			</div>
		</div>
	</header>



	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Notes</h3>

			<div class="container text-middle">

				<a href="<%=request.getContextPath()%>/dashboard/insert"
					class="btn btn-success">Add New Note</a>
			</div>

			<div class="row">
				<c:forEach var="note" items="${listNote}">
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<svg class="bd-placeholder-img card-img-top" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg"
								preserveAspectRatio="xMidYMid slice" focusable="false"
								role="img" aria-label="Placeholder: Thumbnail">
								<title>Placeholder</title>
                            <rect width="100%" height="100%"
									fill="#55595c" />
                            <text x="50%" y="50%" fill="#eceeef"
									dy=".3em">${note.title}</text>
                        </svg>
							<div class="card-body">
								<p class="card-text">${note.content}</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<%-- <a class="btn btn-sm btn-outline-secondary"
											href="edit?id=<c:out value='${note.note_id}' />">Edit</a> <a
											class="btn btn-sm btn-outline-secondary"
											href="delete?id=<c:out value='${note.note_id}' />">Delete</a> --%>
										<td>
										<form action="<c:url value="/dashboard/update"/>" method="post">
											<input type="hidden" name="noteId"value='${note.note_id}'"> 
											<input style="background: #00ff00;" type="submit" value="Update">
										</form>

										<td>
											<form action="<c:url value="/dashboard/delete"/>"
												method="post">
												<input type="hidden" name="noteId" value='${note.note_id}'>
												<input style="background: #F00;" type="submit"
													value="Delete">
											</form>
										</td>
									</div>
									<%--                                <small class="text-muted">9 mins</small>--%>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>
