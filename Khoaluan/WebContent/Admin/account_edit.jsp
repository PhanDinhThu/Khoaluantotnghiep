<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Furniture -  Admin Online sales site</title>

<link href="/Khoaluan/Admin/assets/css/bootstrap.css" rel="stylesheet" />
<link href="/Khoaluan/Admin/assets/css/font-awesome.css" rel="stylesheet" />
<link href="/Khoaluan/Admin/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<link href="/Khoaluan/Admin/assets/css/custom.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
</head>
<body>

	<%
	if (session.getAttribute("memberSession") == null) {
		response.sendRedirect("/Khoaluan/login.jsp");
	} 
	String password_error = "", email_error = "", fullname_error = "", phone_error = "",
				address_error = "",access_error="",status_error="";
		if (request.getAttribute("password_error") != null) {
			password_error = (String) request.getAttribute("password_error");
		}
		if (request.getAttribute("email_error") != null) {
			email_error = (String) request.getAttribute("email_error");
		}
		if (request.getAttribute("fullname_error") != null) {
			fullname_error = (String) request.getAttribute("fullname_error");
		}
		if (request.getAttribute("phone_error") != null) {
			phone_error = (String) request.getAttribute("phone_error");
		}
		if (request.getAttribute("address_error") != null) {
			address_error = (String) request.getAttribute("address_error");
		}
		if (request.getAttribute("access_error") != null) {
			access_error = (String) request.getAttribute("access_error");
		}
		if (request.getAttribute("status_error") != null) {
			status_error = (String) request.getAttribute("status_error");
		}

		String  password = "", email = "", phone = "", fullname = "", address = "",access="", status="";
		
		if (request.getAttribute("Password") != null) {
			password = (String) request.getAttribute("Password");
		}
		if (request.getAttribute("Email") != null) {
			email = (String) request.getAttribute("Email");
		}
		if (request.getAttribute("Fullname") != null) {
			fullname = (String) request.getAttribute("Fullname");
		}
		if (request.getAttribute("Phone") != null) {
			phone = (String) request.getAttribute("Phone");
		}
		if (request.getAttribute("Address") != null) {
			address = (String) request.getAttribute("Address");
		}
		 if (request.getAttribute("Access") != null) {
			access = (String) request.getAttribute("Access");
		}
		if (request.getAttribute("Status") != null) {
			status = (String) request.getAttribute("Status");
		} 

	%>

	<div id="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="menu.jsp"></jsp:include>
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>QU???N L?? T??I KHO???N</h2>
					</div>
				</div>

				<hr />
				<div class="row">
					<div class="col-md-12">

						<div class="panel panel-default">
							<div class="panel-heading" style="background:#106356; color:white; font-weight:bold">S???A T??I KHO???N</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6">
										<form action="/Khoaluan/AccountServlet_Update" method="post">
										<div class="form-group">
												<label>T??i kho???n</label> 
												
												<input class="form-control" type="text" name="Username" value="<%=request.getParameter("Username") %>" readonly style="background:#DDDDDD" />
											</div>
											<div class="form-group">
												<label>M???t Kh???u</label> 
												<span style="color: red"><%=password_error %></span>
												<input class="form-control" type="password" name="Password" value="<%=request.getParameter("Password") %>" readonly style="background:#DDDDDD" />
											</div>
											
											
											<div class="form-group">
												<label>H??? V?? T??n</label> 
												<span style="color: red"><%=fullname_error %></span>
												<input class="form-control" type="text" name="Fullname" value="<%=request.getParameter("Fullname") %>" />
											</div>
											
											<div class="form-group">
												<label>?????a Ch???</label> 
												<span style="color: red"><%=address_error %></span>
												<input class="form-control" type="text" name="Address" value="<%=request.getParameter("Address") %>" />
											</div>
											
											<div class="form-group">
												<label>S??? ??i???n Tho???i</label> 
												<span style="color: red"><%=phone_error %></span>
												<input class="form-control" type="text" name="Phone" value="<%=request.getParameter("Phone")%>" />
											</div>
											
											<div class="form-group">											
												<label>?????a Ch??? Email</label> 
												<span style="color: red"><%=email_error %></span>
												<input class="form-control"  type="text" name="Email" value="<%=request.getParameter("Email") %>" readonly style="background:#DDDDDD" />
											</div>
											
																																												
											<div class="form-group">
												<label>Quy???n Truy C???p</label> 
												<span style="color: red"><%=access_error%></span>
												<select class="form-control" name="Access">
													<option value="2">Kh??ch H??ng</option>
													<option value="1">Admin</option>
													<option value="3">Nh??n vi??n</option>
													
												</select>
											</div>
											<div class="form-group">
												<label>Tr???ng Th??i</label> 
												<span style="color: red"><%=status_error %></span>
												<select class="form-control" name="Status" readonly style="background:#DDDDDD">
													<option value="1">???? K??ch Ho???t</option>
													
												</select>
											</div>
											<input type="hidden" name="action" value="Update"> 
											<input type="hidden" name="ID_Account" value="<%=request.getParameter("ID_Account")%>"> 				
											<button type="submit" class="btn btn-success">S???a t??i kho???n</button>
											<button type="reset" class="btn btn-primary" style="margin-left:5%">Kh??i ph???c</button>
											<a href="account_manager.jsp"  class="btn btn-danger" style="margin-left:5%">Tho??t</a>	
										</form>
										<br />
									</div>
								</div>
							</div>
						</div>				
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="assets/js/jquery.metisMenu.js"></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="assets/js/custom.js"></script>
</body>
</html>