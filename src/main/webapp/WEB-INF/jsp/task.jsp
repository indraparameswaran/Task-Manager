<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<div class="panel-heading">Add TASK</div>
				<div class="panel-body">
					<form:form method="post" modelAttribute="task">
						<form:hidden path="id" />

						<fieldset class="form-group">
							<form:label path="email">Email</form:label>
							<form:input path="email" type="text" class="form-control"
								required="required" />
							<form:errors path="email" cssClass="text-warning" />
						</fieldset>
						
						<fieldset class="form-group">
							<form:label path="taskName">Task Name</form:label>
							<form:input path="taskName" type="text" class="form-control"
								required="required" />
							<form:errors path="taskName" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
							<form:label path="description">Description</form:label>
							<form:input path="description" type="text" class="form-control"
								required="required" />
							<form:errors path="description" cssClass="text-warning" />
						</fieldset>


						<fieldset class="form-group">
							<form:label path="startDate">Start Date</form:label>
							<form:input path="startDate" type="text" class="form-control"
								required="required" />
							<form:errors path="startDate" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
							<form:label path="endDate">End Date</form:label>
							<form:input path="endDate" type="text" class="form-control"
								required="required" />
							<form:errors path="endDate" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
							<form:label path="severity">Severity</form:label>
							<%-- 							<form:input path="severity" type="text" class="form-control" --%>
							<%-- 								required="required" /> --%>
							<select name="severity" id="severity">
								<option value="high">High</option>
								<option value="medium">Medium</option>
								<option value="low">Low</option>
							</select>
							<form:errors path="severity" cssClass="text-warning" />
						</fieldset>

						<button type="submit" class="btn btn-success">Save</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>

