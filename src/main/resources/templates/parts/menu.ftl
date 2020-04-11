
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Company name</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/">Home</a>
      </li>
      <#if isAdmin>
	      <li class="nav-item">
	        <a class="nav-link" href="/user">Users</a>
	      </li>
      </#if>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Models
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/model">Model list</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
    <#if user??>
    	
	    <form class="form-inline my-2 my-lg-0" action="/logout" method="post">
	      <input type="hidden" value="${_csrf.token}" name="_csrf" />
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Logout</button>
	    </form>
	<#else>
	    <form class="form-inline my-2 my-lg-0" action="/login" method="post">
	      <input class="form-control mr-sm-2" type="text" placeholder="User name" aria-label="User name" name="username">
	      <input class="form-control mr-sm-2" type="password" placeholder="Password" aria-label="Password" name="password">
	      <input type="hidden" value="${_csrf.token}" name="_csrf" />
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
	    </form>
    </#if>
  </div>
</nav>