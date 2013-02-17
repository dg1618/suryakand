<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%> 
<div class="row">
	<div class="span12 well">
	<table class="table table-striped">
		<thead>
			<tr>
			<td>User ID</td>
			<td>First Name</td>
			<td>User Name</td>
			</tr>
		</thead>
		<c:forEach items="${userList}" var="userRow">
			<tr>
				<td>${userRow.userId}</td>
				<td>${userRow.firstName}</td>
				<td>${userRow.username}</td>
			</tr>
		</c:forEach>
	</table>
	</div>
</div>