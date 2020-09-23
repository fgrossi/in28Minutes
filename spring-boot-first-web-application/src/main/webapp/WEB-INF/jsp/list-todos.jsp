<%@ include file="common/header.jspf"%>


<div class="container">
	<%@ include file="common/navigation.jspf"%>

	<h3>Here are the list of your (${user}) todos</h3>
	<font color="blue">${msg}</font>
	<p>
	<table class="table table-striped ">
		<caption>your todos are</caption>
		<thead>
			<tr>
				<th>description
				</td>
				<th>target Date
				</td>
				<th>Is it Done?
				</td>
				<th>Update</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.desc}</td>
					<td><fmt:formatDate value="${todo.targetDate}"
							pattern="dd/MM/yyyy" /></td>
					<td>${todo.done }</td>
					<td><a type="button" class="btn btn-success"
						href="/update-todo?id=${todo.id}">UPDATE</a>
					<td><a type="button" class="btn btn-warning"
						href="/delete-todo?id=${todo.id}">DELETE</a>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<a class="btn btn-primary" href="/add-todo">Add a Todo</a>
	</div>
</div>
<%@ include file="common/footer.jspf"%>
