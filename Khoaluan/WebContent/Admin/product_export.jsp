<%@page import="Model.InvoiceDetail"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Account"%>
<%@page import="Model.Product"%>
<%@page import="Model.Export"%>
<%@page import="Model.Category"%>
<%@page import="Dao.ProductDAOImpl"%>
<%@page import="Dao.CategoryDAOImpl"%>
<%@page import="Dao.News_CategoryDAOImpl"%>
<%@page import="Dao.InvoiceDetailDAOImpl"%>
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
<!-- <link href="/TheSinh_Homeware/Admin/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" /> -->
<!-- <link href="/TheSinh_Homeware/Admin/assets/css/custom.css" rel="stylesheet" /> -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
</head>
<body>
<%
	if (session.getAttribute("memberSession") == null) {
		response.sendRedirect("/Khoaluan/login.jsp");
	} 
		ProductDAOImpl proDAO = new ProductDAOImpl();
		InvoiceDetailDAOImpl indeDAO = new InvoiceDetailDAOImpl();
		ArrayList<Product> listPro = proDAO.getList();
		ArrayList<Export> listExport = indeDAO.getListExport();
		CategoryDAOImpl cateDAO = new CategoryDAOImpl();
		News_CategoryDAOImpl brandDAO = new News_CategoryDAOImpl();
		ArrayList<InvoiceDetail> listInvoiceDetail3 = indeDAO.getListInvoiceDetail();
%>
<%
                                          int countExport=0;
												for (Export ex : listExport ) {
												countExport += ex.quantity;}
												
												%> 
	<div id="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="menu.jsp"></jsp:include>
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>S???N PH???M ???? XU???T KHO</h2>
					
						<div class="btn btn-success" style="padding: 0px 0px;" >
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".sidebar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
								<a class="navbar-brand" href="/Khoaluan/Admin/inventory_manager.jsp" style="color: white;text-transform:uppercase;font-size:14px;"> Quay l???i</a>
						</div>
						<!-- <div  style="margin-left:30px">
							
						
								
								<button class="exportToExcelk btn btn-success" id="export3" style="margin-left:10px;font-size:12px;padding:15px 12px"> XU???T B??O C??O</button>
						
						</div> -->
						<div class="btn btn-success" style="padding: 0px 0px;margin-left:30px" >
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".sidebar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
								<button class="exportToExcelk btn btn-success" id="export3" style="font-size:12px;padding:15px 12px"> XU???T B??O C??O</button>
						</div>
					</div>
				</div>
				<hr />

				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading" style="background:#106356; color:black; font-weight:bold">S???n ph???m ???? xu???t kho
							<span style="margin-left:50%; color:white;text-transform:uppercase;font-weight: bold">
							<span style="color:white">T???ng ???? xu???t kho:</span><%=countExport %> <span style="font-weight: normal;text-transform:none">s???n ph???m</span>
							 </span>
							</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover table2excel kkk"
										id="dataTables-example5">
										<tfoot style="display:none">
				                         <tr><td colspan="6">S???N PH???M ???? XU???T KHO </td></tr>
			                              </tfoot>
										<thead >
											<tr style="text-align: center;">
												<th style="text-align:center">M?? S???n Ph???m</th>
												<th style="text-align:center">M?? Danh M???c</th> 												
												<th style="text-align:center">T??n S???n Ph???m</th> 
												<th style="text-align:center">H??nh ???nh</th>
												<th style="text-align:center">S??? L?????ng ???? B??n</th> 
												
											</tr>
										</thead>
										<tbody>
										<%
												for (Export exp : listExport) {
											%>
												<tr class="odd gradeX imgKho">
												<td style="text-align:center"><%=exp.getProductId()%></td>
												<td style="text-align:center"><%=exp.getCategoryId()%></td>												
												<td style="text-align:center"><%=exp.getProductName()%></td>
												<td style="text-align:center"><img style="width:60px; height:auto" src="${pageContext.request.contextPath}/DisplayImage?imageId=<%=exp.getImage()%>" alt="" /></td>
												<td style="text-align:center"><%=exp.getQuantity()%></td>
											
												
											</tr>
											<%
												}
											%>
										</tbody>
										<tfoot style="display:none">
				<tr><td colspan="6">T???ng ???? xu???t kho:</span>  <%=countExport %> </td>
				</tr>
			</tfoot>
									</table>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<script src="assets/js/jquery-1.10.2.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.metisMenu.js"></script>
	<script src="assets/js/dataTables/jquery.dataTables.js"></script>
	<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example5').dataTable();
		});
	</script>
<!-- 	<script src="assets/js/custom.js"></script> -->
	<script src="../dist/jquery.table2excel.js"></script>
    <script>
			$(function() {
				$(".exportToExcelk").click(function(e){
					/* alert("fsdfds");  */
					var table =  $('.kkk');
					if(table && table.length){
						$(table).table2excel({
							exclude: ".noExl",
							name: "Excel Document Name",
							filename: "ThongKeXuatKho",
							fileext: ".xls",
							exclude_img: true,
							exclude_links: true,
							exclude_inputs: true							
						});
					}	
				});
			
			});
		</script>

</body>
</html>