<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product manager</title>
<%@include file="/commons/admin-css.jsp"%>
<link href="cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<jsp:include page="nav-bar.jsp"></jsp:include>

			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>User managerment</h3>
						</div>
					</div>
					<div class="clearfix"></div>

					<div class="row">
						


						<div class="col-md-12 col-sm-12 ">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										Default Example <small>Users</small>
									</h2>
									
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-wrench"></i></a>
											<div class="dropdown-menu"
												aria-labelledby="dropdownMenuButton">
												<a class="dropdown-item" href="#">Settings 1</a> <a
													class="dropdown-item" href="#">Settings 2</a>
											</div></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div class="row">
									<form action="/admin/search" method="post">
									<div class="col-sm-12">
									
									</div>
									</form>	
										<div class="col-sm-12">
											<div class="card-box table-responsive">

												<table id="datatable"
													class="table table-striped table-bordered"
													style="width: 100%">
													<thead>
														<tr>
															<th>Category name</th>
															<th>Total price</th>
														</tr>
													</thead>


													<tbody>
														<c:if test="${orders != null }">
															<c:forEach var="e" items="${orders}" varStatus="loop">
															<tr>
																<td>${e.name }</td>
																				<td>${e.price }</td>
																</tr>
															</c:forEach>
														</c:if>


													</tbody>
													
												</table>
<!-- 												<ul class="pagination"> -->
<!-- 														<li class="page-item"><a class="page-link" href="/admin/users-manager?p=0">First</a></li> -->
															
<%-- 														<li class="page-item"><a class="page-link" href="/admin/users-manager?p=${users.number-1}">Previous</a></li> --%>
															
<%-- 														<li class="page-item"><a class="page-link" href="/admin/users-manager?p=${users.number+1}">Next</a></li> --%>
															
<%-- 														<li class="page-item"><a class="page-link" href="/admin/users-manager?p=${users.totalPages-1}">Last</a></li> --%>
															
<!-- 													</ul> -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="/commons/admin-script.jsp"%>
</body>
</html>