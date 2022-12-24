<%@ include file="layout/header.jspf"%>

<%@ include file="layout/navbar.jspf"%>

<div class="container">

	<h1>Your Todos</h1>

	<table class="table">
		<thead>
			<tr>
				<th class="text-center">Description</th>
				<th class="text-center">Target Date</th>
				<th class="text-center">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="todo" items="${todos }">
				<tr>
					<td class="text-center">${todo.description }</td>
					<td class="text-center">${todo.targetDate }</td>
					<td class="text-center"><a href="update-todo?id=${todo.id }"
						class="btn btn-warning">Update</a> <a
						href="delete-todo?id=${todo.id }" class="btn btn-danger">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<a href="add-todo" class="btn btn-success">Add Todo</a>

</div>

<%@ include file="layout/footer.jspf"%>