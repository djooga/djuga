<#import "/parts/html.ftl" as p>
<@p.html5 "users">
<h3>User edit form</h3>

<div class="container">
	<form action="/user" method="post">
		<div class="form-group">
			<label for="username">
				User name 
				<input type="text"
				class="form-control" name="username"
				aria-describedby="Enter user name" value="${user.username}"/>
			</label> 
			<small id="usernamelHelp" class="form-text text-muted">
				Enter your user name.
			</small>
		</div>
		<div class="form-group">
			<#list roles as role>
				<div class="input-group mb-3">
				  <div class="input-group-prepend">
				    <div class="input-group-text">
				      <input type="checkbox" 
				      	${user.roles?seq_contains(role)?string("checked","")}
				      	name="${role}">
				    </div>
				  </div>
				  <label class="form-control"> ${role}</label> 
				</div>
			</#list>
		</div>
		<input type="hidden" name="userId" value="${user.id}"/> 
		<input type="hidden" name="_csrf" value="${_csrf.token}" />
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>

</@p.html5>