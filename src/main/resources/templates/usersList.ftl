<#import "/parts/html.ftl" as p>
<@p.html5 "users">
<h3>Users list</h3>

<div class="container">
	<div class="row">
		<div class="col">
			<h4>User name</h4>
		</div>
		<div class="col">
			<h4>Roles</h4>
		</div>
		<div class="col">
			<h4>Edit</h4>
		</div>
	</div>
	<#list users as user>
		<div class="row">
			<div class="col">
				${user.username}
			</div>
			<div class="col">
				<#list user.roles as role>
					${role} <#sep>,
				</#list>
			</div>
			<div class="col">
				<a href="/user/${user.id}">Edit</a>
			</div>
		</div>	
	</#list>
</div>

</@p.html5>