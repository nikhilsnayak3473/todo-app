<%@ include file="layout/header.jspf"%>

<%@ include file="layout/navbar.jspf"%>

<div class="container">

	<h1>Enter Todo Details</h1>
	
	<form:form method="post" modelAttribute="todo">

		<form:input type="hidden" path="id" />

		<fieldset class="mb-3">
			<form:label path="description">Description</form:label>
			<form:input type="text" path="description" required="required" />
			<form:errors cssClass="text-warning" path="description" />
		</fieldset>

		<fieldset class="mb-3">
			<form:label path="targetDate">Target Date</form:label>
			<form:input type="text" path="targetDate" required="required" />
			<form:errors cssClass="text-warning" path="targetDate" />
		</fieldset>

		<button type="submit" class="btn btn-success">Submit</button>

	</form:form>
	
</div>

<%@ include file="layout/footer.jspf"%>

<script type="text/javascript">
	$('#targetDate').datepicker({
		format : 'yyyy-mm-dd',
	});
</script>


