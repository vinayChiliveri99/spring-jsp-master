<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
		<link href ="webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
		<link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css
		" rel="stylesheet">
		<title>Add Todos Page</title>
	</head>
	
	<body>
	
		<nav class="navbar navbar-expand-md navbar-light bg-light mb-3 p-1">
			<a class="navbar-brand m-1" href="/welcomePage">ToDo Application</a>
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="/welcomePage">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="/list-todos">Todos</a></li>
				</ul>
			</div>
			
	</nav>
	
	
	
		<div class="container">
			<h1>Enter todo details</h1>
			<form:form method = "post" modelAttribute="todo">
				
				<fieldset class="mb-3">
					<form:label path="description">Description</form:label>
					<form:input type="text" path="description" required="required"/>
					<form:errors path="description" cssClass="text-warning"/>
				</fieldset>
				
				<fieldset class="mb-3">
					<form:label path="targetDate">Target Date</form:label>
					<form:input type="text" path="targetDate" required="required"/>
					<form:errors path="targetDate" cssClass="text-warning"/>
				</fieldset>
				
				
				
				<form:input type="hidden" path="id"/>
				<form:input type="hidden" path="isdone"/>
				<input type="submit" class="btn btn-success">
			
			</form:form>
		</div>
		
		<script src="webjars/bootsrtap/5.3.0/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
		<script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js
		"></script>
		
		<script type="text/javascript">
			$('#targetDate').datepicker({
			    format: 'yyyy-mm-dd'
			});
		</script>
	</body>
</html>

