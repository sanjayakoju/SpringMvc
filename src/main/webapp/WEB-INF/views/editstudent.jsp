

<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Bootstrap Material Admin by Bootstrapious.com</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css">
<!-- Fontastic Custom icon font-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/fontastic.css">
<!-- Google fonts - Poppins -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
<!-- theme stylesheet-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->


<!--  Table css -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap1.min.css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap.css">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-1.12.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap.js"></script>
</head>
<body>
	<div class="page">
		<!-- Main Navbar-->
		<header class="header">
			<nav class="navbar">
				<!-- Search Box-->
				<div class="search-box">
					<button class="dismiss">
						<i class="icon-close"></i>
					</button>
					<form id="searchForm" action="tables" role="search">
						<input type="search" placeholder="What are you looking for..."
							class="form-control">
					</form>
				</div>
				<div class="container-fluid">
					<div
						class="navbar-holder d-flex align-items-center justify-content-between">
						<!-- Navbar Header-->
						<div class="navbar-header">
							<!-- Navbar Brand -->
							<a href="home" class="navbar-brand d-none d-sm-inline-block">
								<div class="brand-text d-none d-lg-inline-block">
									<span>Bootstrap </span><strong>Dashboard</strong>
								</div>
								<div class="brand-text d-none d-sm-inline-block d-lg-none">
									<strong>BD</strong>
								</div>
							</a>
							<!-- Toggle Button-->
							<a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
						</div>
						<!-- Navbar Menu -->
						<ul
							class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
							<!-- Search-->
							<li class="nav-item d-flex align-items-center"><a
								id="search" href="#"><i class="icon-search"></i></a></li>
							<!-- Notifications-->
							<li class="nav-item dropdown"><a id="notifications"
								rel="nofollow" data-target="#" href="#" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false" class="nav-link"><i
									class="fa fa-bell-o"></i><span
									class="badge bg-red badge-corner">12</span></a>
								<ul aria-labelledby="notifications" class="dropdown-menu">
									<li><a rel="nofollow" href="#" class="dropdown-item">
											<div class="notification">
												<div class="notification-content">
													<i class="fa fa-envelope bg-green"></i>You have 6 new
													messages
												</div>
												<div class="notification-time">
													<small>4 minutes ago</small>
												</div>
											</div>
									</a></li>
									<li><a rel="nofollow" href="#" class="dropdown-item">
											<div class="notification">
												<div class="notification-content">
													<i class="fa fa-twitter bg-blue"></i>You have 2 followers
												</div>
												<div class="notification-time">
													<small>4 minutes ago</small>
												</div>
											</div>
									</a></li>
									<li><a rel="nofollow" href="#" class="dropdown-item">
											<div class="notification">
												<div class="notification-content">
													<i class="fa fa-upload bg-orange"></i>Server Rebooted
												</div>
												<div class="notification-time">
													<small>4 minutes ago</small>
												</div>
											</div>
									</a></li>
									<li><a rel="nofollow" href="#" class="dropdown-item">
											<div class="notification">
												<div class="notification-content">
													<i class="fa fa-twitter bg-blue"></i>You have 2 followers
												</div>
												<div class="notification-time">
													<small>10 minutes ago</small>
												</div>
											</div>
									</a></li>
									<li><a rel="nofollow" href="#"
										class="dropdown-item all-notifications text-center"> <strong>view
												all notifications </strong></a></li>
								</ul></li>
							<!-- Messages                        -->
							<li class="nav-item dropdown"><a id="messages"
								rel="nofollow" data-target="#" href="#" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false" class="nav-link"><i
									class="fa fa-envelope-o"></i><span
									class="badge bg-orange badge-corner">10</span></a>
								<ul aria-labelledby="notifications" class="dropdown-menu">
									<li><a rel="nofollow" href="#"
										class="dropdown-item d-flex">
											<div class="msg-profile">
												<img src="img/avatar-1.jpg" alt="..."
													class="img-fluid rounded-circle">
											</div>
											<div class="msg-body">
												<h3 class="h5">Jason Doe</h3>
												<span>Sent You Message</span>
											</div>
									</a></li>
									<li><a rel="nofollow" href="#"
										class="dropdown-item d-flex">
											<div class="msg-profile">
												<img src="img/avatar-2.jpg" alt="..."
													class="img-fluid rounded-circle">
											</div>
											<div class="msg-body">
												<h3 class="h5">Frank Williams</h3>
												<span>Sent You Message</span>
											</div>
									</a></li>
									<li><a rel="nofollow" href="#"
										class="dropdown-item d-flex">
											<div class="msg-profile">
												<img
													src="${pageContext.request.contextPath}/resources/img/avatar-3.jpg"
													alt="..." class="img-fluid rounded-circle">
											</div>
											<div class="msg-body">
												<h3 class="h5">Ashley Wood</h3>
												<span>Sent You Message</span>
											</div>
									</a></li>
									<li><a rel="nofollow" href="#"
										class="dropdown-item all-notifications text-center"> <strong>Read
												all messages </strong></a></li>
								</ul></li>
							<!-- Languages dropdown    -->
							<li class="nav-item dropdown"><a id="languages"
								rel="nofollow" data-target="#" href="#" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"
								class="nav-link language dropdown-toggle"><img
									src="${pageContext.request.contextPath}/resources/img/flags/16/GB.png"
									alt="English"><span class="d-none d-sm-inline-block">English</span></a>
								<ul aria-labelledby="languages" class="dropdown-menu">
									<li><a rel="nofollow" href="#" class="dropdown-item">
											<img
											src="${pageContext.request.contextPath}/resources/img/flags/16/DE.png"
											alt="English" class="mr-2">German
									</a></li>
									<li><a rel="nofollow" href="#" class="dropdown-item">
											<img
											src="${pageContext.request.contextPath}/resources/img/flags/16/FR.png"
											alt="English" class="mr-2">French
									</a></li>
								</ul></li>

							<!-- Logout    -->
							<li class="nav-item"><a href="login" class="nav-link logout">
									<span class="d-none d-sm-inline">Logout</span><i
									class="fa fa-sign-out"></i>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<div class="page-content d-flex align-items-stretch">
				<!-- Side Navbar -->
				<nav class="side-navbar">
					<!-- Sidebar Header-->
					<div class="sidebar-header d-flex align-items-center">
						<div class="avatar">
							<img
								src="${pageContext.request.contextPath}/resources/img/avatar-1.jpg"
								alt="..." class="img-fluid rounded-circle">
						</div>
						<div class="title">
							<h1 class="h4">Mark Stephen</h1>
							<p>Web Designer</p>
						</div>
					</div>
					<!-- Sidebar Navidation Menus-->
					<span class="heading">Main</span>
					<ul class="list-unstyled">
						<li><a href="home"> <i class="icon-home"></i>Home
						</a></li>
						<li class="active"><a href="tables"> <i class="icon-grid"></i>Tables
						</a></li>
						<li><a href="forms"> <i class="icon-padnote"></i>Forms
						</a></li>
						<li><a href="#exampledropdownDropdown" aria-expanded="false"
							data-toggle="collapse"> <i class="icon-interface-windows"></i>Example
								dropdown
						</a>
							<ul id="exampledropdownDropdown" class="collapse list-unstyled ">
								<li><a href="#">Page</a></li>
								<li><a href="#">Page</a></li>
								<li><a href="#">Page</a></li>
							</ul></li>
						<li><a href="login"> <i class="icon-interface-windows"></i>Login
								page
						</a></li>
					</ul>
					<span class="heading">Extras</span>
					<ul class="list-unstyled">
						<li><a href="#"> <i class="icon-flask"></i>Demo
						</a></li>
						<li><a href="#"> <i class="icon-screen"></i>Demo
						</a></li>
						<li><a href="#"> <i class="icon-mail"></i>Demo
						</a></li>
						<li><a href="#"> <i class="icon-picture"></i>Demo
						</a></li>
					</ul>
				</nav>
				<div class="content-inner">
					<!-- Page Header-->
					<header class="page-header">
						<div class="container-fluid">
							<h2 class="no-margin-bottom">Tables</h2>
						</div>
					</header>
					<!-- Breadcrumb-->
					<div class="breadcrumb-holder container-fluid">
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="home">Home</a></li>
							<li class="breadcrumb-item active">Form</li>
						</ul>
					</div>

					<h1>Edit Form</h1>
					<hr>

					<div class="container-fluid">
						<div class="row">
							<spring:form action="${pageContext.request.contextPath}/update"
								method="post" modelAttribute="mstock">
								<fieldset>
									<table>
										<tr>
											<td>First Name</td>
											<td><spring:input path="fname" /></td>
										</tr>
										<tr>
											<td>Last Name</td>
											<td><spring:input path="lname" /></td>
										</tr>
										<tr>
											<td>Gender</td>
											<td><spring:radiobutton path="gender" value="male" />Male
												<spring:radiobutton path="gender" value="female" />Female</td>
										</tr>
										<tr>
											<td>DOB</td>
											<td><spring:input path="dob" type="date" /></td>
										</tr>
										<tr>
											<td>Collage</td>
											<td><spring:input path="collage" /></td>
										</tr>
										<tr>
											<td>Faculty</td>
											<td><spring:input path="faculty" /></td>
										</tr>
										<tr>
											<td>Semester</td>
											<td><spring:input path="semester" /></td>
										</tr>
										<tr>
											<td>Roll No</td>
											<td><spring:input path="rollno" /></td>
										</tr>
										<tr>
											<td>Phone</td>
											<td><spring:input path="phone" /></td>
										</tr>
										<tr>
											<td>Country</td>
											<td><spring:input path="address.country" /></td>
										</tr>
										<tr>
											<td>City</td>
											<td><spring:input path="address.city" /></td>
										</tr>
										<tr>
											<td>State</td>
											<td><spring:select path="address.state">
													<spring:option value="">-------select---------</spring:option>
													<spring:option value="1">State 1</spring:option>
													<spring:option value="2">State 2</spring:option>
													<spring:option value="3">State 3</spring:option>
													<spring:option value="4">State 4</spring:option>
													<spring:option value="5">State 5</spring:option>
													<spring:option value="6">State 6</spring:option>
													<spring:option value="7">State 7</spring:option>
												</spring:select></td>
										</tr>
										<tr>
											<td>Zip</td>
											<td><spring:input path="address.zip" /></td>
										</tr>
										<tr>
											<td></td>
											<td><input type="submit" value="Update" /></td>
										</tr>



									</table>
									<spring:hidden path="id" />
									<spring:hidden path="address.id" />


								</fieldset>
							</spring:form>

						</div>
					</div>
					<!-- Page Footer-->
					<footer class="main-footer">
						<div class="container-fluid">
							<div class="row">
								<div class="col-sm-6">
									<p>Your company &copy; 2017-2019</p>
								</div>
								<div class="col-sm-6 text-right">
									<p>
										Design by <a href="https://bootstrapious.com/p/admin-template"
											class="external">Bootstrapious</a>
									</p>
									<!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
								</div>
							</div>
						</div>
					</footer>
				</div>
			</div>
			<!-- JavaScript files-->
			<script src="vendor/jquery/jquery.min.js"></script>
			<script src="vendor/popper.js/umd/popper.min.js">
				
			</script>
			<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
			<script src="vendor/jquery.cookie/jquery.cookie.js">
				
			</script>
			<script src="vendor/chart.js/Chart.min.js"></script>
			<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
			<!-- Main File-->
			<script src="js/front.js"></script>
</body>
</html>