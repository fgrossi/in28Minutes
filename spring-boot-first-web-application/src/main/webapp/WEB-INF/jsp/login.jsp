<%@ include file="common/header.jspf"%>


<div class="container">
	<%@ include file="common/navigation.jspf"%>

	<form:form method="post" action="login">
		<fieldset class="form-group">
			<font color="red">${errorMessage}</font><label>name</label>
			<input type="text" name="user" class="form-control" />
		</fieldset>
		<fieldset class="form-group">

			<label>pwd </label>
			<input type="password" name="password" class="form-control" />
		</fieldset>
		<button type="submit" class="btn btn-primary" >login</button>
	</form:form>
</div>

<%@ include file="common/footer.jspf"%>
