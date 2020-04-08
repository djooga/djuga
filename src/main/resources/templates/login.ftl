<#import "/parts/html.ftl" as p> <@p.html5 "LogIn">
<div class="container">
	<form action="/login" method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">User name <input type="text"
				class="form-control" name="username"
				aria-describedby="Enter user name">
			</label> <small id="emailHelp" class="form-text text-muted">Enter
				your user name.</small>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Password <input
				type="password" class="form-control" name="password">
			</label> <small class="form-text text-muted">Enter your password</small>
		</div>
		<div class="form-group form-check">
			<input type="checkbox" class="form-check-input" id="exampleCheck1">
			<label class="form-check-label" for="exampleCheck1">Check me
				out</label>
		</div>
		<input type="hidden" name="_csrf" value="${_csrf.token}" />
		<button type="submit" class="btn btn-primary">Sign In</button>
	</form>
	<div class="container">
		<h5><a href="/registration">Registration</a> </h5>
	</div>
</div>
</@p.html5>