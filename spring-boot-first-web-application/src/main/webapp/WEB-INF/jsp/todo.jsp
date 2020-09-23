<%@ include file="common/header.jspf"%>


<div class="container">

	<%@ include file="common/navigation.jspf"%>
	
	<form:form method="post" modelAttribute="todo">
		<fieldset class="form-group">
			<form:label path="desc">Description</form:label>
			<form:input path="desc" type="text" class="form-control"
				required="required" />
			<form:errors path="desc" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="targetDate">target Date</form:label>
			<form:input path="targetDate" type="text" class="form-control"
				required="required" startDate="+1d" autoclose="true" />
			<form:errors path="targetDate" cssClass="text-warning" />
		</fieldset>

		<button type="submit" class="btn btn-success">Add</button>
	</form:form>
</div>

<%@ include file="common/footer.jspf"%>


