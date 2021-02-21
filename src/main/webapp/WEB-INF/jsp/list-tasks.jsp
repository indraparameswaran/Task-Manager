<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/add-task">Add Task</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>List of TASK's</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
					    <th width="40%">Email</th>
					    <th width="40%">Task Name</th>
						<th width="40%">Description</th>
						<th width="40%">Start Date</th>
						<th width="40%">End Date</th>
						<th width="40%">Severity</th>
						<th width="20%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${tasks}" var="task">
						<tr>
						    <td>${task.email}</td>
						    <td>${task.taskName}</td>
							<td>${task.description}</td>
							<td><fmt:formatDate value="${task.startDate}"
									pattern="MM/dd/yyyy" /></td>
							<td><fmt:formatDate value="${task.endDate}"
									pattern="MM/dd/yyyy" /></td>
							<td>${task.severity}</td>
							<td><a type="button" class="btn btn-success"
								href="/update-task?id=${task.id}">Update</a>
							<a type="button" class="btn btn-warning"
								href="/delete-task?id=${task.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/footer.jspf"%>