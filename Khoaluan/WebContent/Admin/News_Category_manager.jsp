<%@page import="java.util.ArrayList"%>
<%@page import="Model.Account"%>
<%@page import="Model.News"%>
<%@page import="Model.News_Category"%>
<%@page import="Dao.NewsDAOImpl"%>
<%@page import="Dao.News_CategoryDAOImpl"%>
<%@page import="Dao.TinhTrangDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Furniture -  Admin Online sales site</title>

<link href="/Khoaluan/assets/css/bootstrap.css" rel="stylesheet" />
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
		News_CategoryDAOImpl cateDAO = new News_CategoryDAOImpl();
		ArrayList<News_Category> listNews = cateDAO.getList();
		TinhTrangDAO ttDAO = new TinhTrangDAO();
	%>

	<div id="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="menu.jsp"></jsp:include>
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>QUẢN LÝ LOẠI TIN TỨC</h2>
					
						<div class="btn btn-success" style="padding: 0px 0px;" >
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".sidebar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
								<a class="navbar-brand" href="/Khoaluan/Admin/News_Category_insert.jsp" style="color: white;text-transform:uppercase;font-size:14px;"> Thêm danh mục</a>
						</div>
					</div>
				</div>
				<hr />

				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading" style="background:#106356; color:black; font-weight:bold">QUẢN LÝ LOẠI TIN TỨC</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead >
											<tr style="text-align: center;">
												<th style="text-align:center">Mã Loại Tin Tức</th>
												<th style="text-align:center">Tên Tin Tức</th>										
												 <th style="text-align:center">Chức Năng</th> 
											</tr>
										</thead>
										<tbody>
										<%
												for (News_Category cate : listNews) {
											%>
											<tr class="odd gradeX">
												<td style="text-align:center"><%=cate.getID_News_Category()%></td>
												<td style="text-align:center"><%=cate.getName_News_Category()%></td>
												
												 <td class="center" style="text-align:center">
												 <span><a href="/Khoaluan/Admin/News_Category_edit.jsp?action=Update&ID_News_Category=<%=cate.getID_News_Category()%>&Name_News_Category=<%=cate.getName_News_Category()%>"
													class="btn btn-info btn-xs" style="margin-bottom:5px">Sửa</a> </span>
													<span> <a <% String ID_News_Category = cate.getID_News_Category();
													 if (ttDAO.checkEmptyNews_Category(ID_News_Category) == true) {											
												        %>style="display:none" <%}
                                                    else{ %> style=" display:block;width:16%;margin-left:42%"
													<%
													}
												%>  href="/Khoaluan/News_Category_Servlet_Del?action=Delete&ID_News_Category=<%=cate.getID_News_Category()%>" onclick="return confirm('Bạn có chắc chắn xóa loại <%=cate.getName_News_Category() %> không ?')"
														 
													 class="btn btn-warning btn-xs">Xóa</a>  </span>
													 </td>
											</tr>
										<%
												}
											%>
										</tbody>
									</table>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="assets/js/jquery.metisMenu.js"></script>
	<!-- DATA TABLE SCRIPTS -->
	<script src="assets/js/dataTables/jquery.dataTables.js"></script>
	<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		});
	</script>
	<!-- CUSTOM SCRIPTS -->
	<script src="assets/js/custom.js"></script>

</body>
</html>