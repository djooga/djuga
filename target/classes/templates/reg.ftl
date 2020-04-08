<#import "/parts/html.ftl" as p> <@p.html5 "Registration">
<div class="container">
	<form action="/registration" method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">User name <input type="text"
				class="form-control" name="username"
				aria-describedby="Enter user name">
			</label> <small id="usernamelHelp" class="form-text text-muted">Enter
				your user name.</small>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Password <input
				type="password" class="form-control" name="password">
			</label> <small class="form-text text-muted">Enter your password</small>
		</div>
		
		<input type="hidden" name="_csrf" value="${_csrf.token}" />
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>
</@p.html5>