<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="brand span1 logo">
	<a href="/"><img class="thumbnail" src="<spring:theme code="site.logo"/>"></a>
</div>

<div class="nav-collapse collapse">
	<ul class="nav">
        <li><a href="/" ><i class="icon-home"></i> Home</a></li>
        <li><a href="contactus" ><i class="icon-pencil"></i> Contact Us</a></li>
        <li><a href="http://suryakand-shinde.blogspot.com/"><i class="icon-th-large"></i> My (Suryakand's) Blog</a></li>
	</ul>
	<div class="navbar-form pull-right">
		<ul class="nav">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Select Theme<b class="caret"></b></a>
			
				<ul class="dropdown-menu">
					<li><a href="/?theme=default">Default</a></li>
					<li><a href="/?theme=olive">Olive</a></li>
					<li><a href="http://suryakand-shinde.blogspot.com/"><i class="icon-th-large"></i> Visit My Blog</a></li>
				</ul>
			</li>
		</ul>
	</div>	
</div>