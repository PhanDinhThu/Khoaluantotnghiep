<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Dao.GoodReceiptDAO"%>
<%@page import="Dao.ProductDAOImpl"%>
<%@page import="Dao.News_CategoryDAOImpl"%>
<%@page import="Model.GoodReceipt"%>
<%@page import="Model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
<script src="js/jquery.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
	<script src="js/jquery.js"></script>
	    
</head>
<body>
<%
	if (session.getAttribute("memberSession") == null) {
	response.sendRedirect("/Khoaluan/loign.jsp");
} 
		String soluong_error = "", gianhap_error = "";
		if (request.getAttribute("soluong_error") != null) {
	soluong_error = (String) request.getAttribute("soluong_error");
		}
		if (request.getAttribute("gianhap_error") != null) {
	gianhap_error = (String) request.getAttribute("gianhap_error");
		}
		
		String soluong = "", gianhap = "";
		if (request.getAttribute("Quantity") != null) {
	soluong = (String) request.getAttribute("Quantity");
		}
		if (request.getAttribute("Price") != null) {
	gianhap = (String) request.getAttribute("Price");
		}
		GoodReceipt goodReceipt= new GoodReceipt();
		GoodReceiptDAO goodReceiptDAO= new GoodReceiptDAO();
		ProductDAOImpl proDAO= new ProductDAOImpl();
		News_CategoryDAOImpl brandDAO= new News_CategoryDAOImpl();
		List<GoodReceipt> listGoodReceipts = goodReceiptDAO.listGoodReceipts();
%>

	<div id="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="menu.jsp"></jsp:include>
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>QU???N L?? NH???P H??NG</h2>
					</div>
					
						
					
						
				</div>

				<hr />
				<div class="row">
					<div class="col-md-12">

						<div class="panel panel-default">
							<div class="panel-heading" style="background:#106356; color:black; font-weight:bold">NH???P TH??M</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6">
										<form role="form" action="/Khoaluan/ReceiptDetailServlet_Add" method="post">
										<div class="form-group">
												<label>M?? phi???u nh???p</label> 
												<span style="color: red"></span>
												<input class="form-control" type="text" name="ID_Receipt" value="<%=request.getParameter("ID_Receipt") %>" readonly />
											</div>
											<div class="form-group">
												<label>T??n s???n ph???m</label>
												<select  class="form-control" name="ID_Product"> 
						 <%  	ProductDAOImpl productDAO= new ProductDAOImpl();
								List<Product> listProducts= productDAO.getList();
								for(int i=0;i<listProducts.size();i++){
								String ID_Product=listProducts.get(i).getID_Product();
								String Name_Product= listProducts.get(i).getName_Product();
								String idCategory= listProducts.get(i).getDanh_Muc().getID_Category();
							
								
	
							%>
 							 <option value="<%=ID_Product%>" ><%=ID_Product%> - <%=Name_Product%> - <%=idCategory%></option>
  							<%
							}
  							%> 
						</select>
											</div>
											
											<div class="form-group">
												<label>Gi?? nh???p</label> 
												<input class="form-control" type="text" name="Price" value="<%=gianhap%>" />
												<span style="color: red" id="gianhap_error"><%=gianhap_error %></span>
											</div>
											<div class="form-group">
												<label>S??? l?????ng</label> 
												<input class="form-control" type="text" name="Quantity" value="<%=soluong%>" />
												<span style="color: red" id="soluong_error"><%=soluong_error %></span>
											</div>
											
											
											<input type="hidden" name="action" value="Insert"> 
											<button type="submit" class="btn btn-success">Th??m</button>
											<button type="reset" class="btn btn-primary" style="margin-left:5%">Kh??i ph???c</button>
											<a href="GoodReceipt.jsp"  class="btn btn-danger" style="margin-left:5%">Tho??t</a>	
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

	<script src="assets/js/jquery-1.10.2.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.metisMenu.js"></script>
	<script src="assets/js/custom.js"></script>
</body>
</html>