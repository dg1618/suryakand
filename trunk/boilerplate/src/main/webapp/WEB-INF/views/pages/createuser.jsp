<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="row">
	<div class="span12 well">
	<form:form action="/user/create" id="userForm" name="userForm" modelAttribute="userModel" method="POST" class="form-horizontal dataForm">
		<fieldset class="basicinfor">
			<legend>Create New User</legend>
			<div class="control-group"><form:input path="username" type="text" id="username" placeholder="User Name" /></div>
			<div class="control-group"><form:input path="firstName" type="text" id="firstName" placeholder="First Name" /></div>
			<div class="control-group"><form:input path="middleName" type="text" id="middleName" placeholder="Middle Name" /></div>
			<div class="control-group"><form:input path="lastName" type="text" id="lastName" placeholder="Last Name" /></div>
			<div class="control-group"><form:input path="phoneNumber" type="text" id="phoneNumber" placeholder="Phone Number" /></div>
			<div class="control-group"><form:input path="password" type="text" id="password" placeholder="Password" /></div>
			<div class="control-group">
				<button id="createUser" class="btn" name="createUser" type="submit"><span>Create User</span></button> 
				<button id="createUser" class="btn" name="createUser" type="reset"><span>Reset</span></button>
			</div>
		</fieldset>
	</form:form>
	</div>
</div>
<script>
jQuery(document).ready(function($){
	jQuery("#userForm").validate({
	    rules: {
	    	username:{required: true},
			firstName: { required: true},
			middleName:{required: true},
			lastName: { required: true},
			phoneNumber:{required: true},
			password:{required: true}
	    },
	    messages: {
	    	username:{required: "User Name is required"},
	    	firstName: { required: "First name is required."},
	    	middleName: { required: "Middle name is required."},
	    	lastName: {required: "Last name is required."},
	    	phoneNumber: { required: "Phone number is required."},
	    	password: { required: "Password is required."}
	    }
	});
});
</script>