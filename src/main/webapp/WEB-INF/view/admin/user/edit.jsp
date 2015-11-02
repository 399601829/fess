<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><la:message key="labels.admin_brand_title" /> | <la:message
		key="labels.user_configuration" /></title>
<jsp:include page="/WEB-INF/view/common/admin/head.jsp"></jsp:include>
</head>
<body class="skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="/WEB-INF/view/common/admin/header.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/view/common/admin/sidebar.jsp">
			<jsp:param name="menuCategoryType" value="user" />
			<jsp:param name="menuType" value="user" />
		</jsp:include>
		<div class="content-wrapper">
			<section class="content-header">
				<h1>
					<la:message key="labels.user_title_details" />
				</h1>
				<jsp:include page="/WEB-INF/view/common/admin/crud/breadcrumb.jsp"></jsp:include>
			</section>
			<section class="content">
				<la:form styleClass="form-horizontal">
					<la:hidden property="crudMode" />
					<c:if test="${crudMode==2}">
						<la:hidden property="id" />
						<la:hidden property="versionNo" />
					</c:if>
					<div class="row">
						<div class="col-md-12">
							<div
								class="box <c:if test="${crudMode == 1}">box-success</c:if><c:if test="${crudMode == 2}">box-warning</c:if>">
								<%-- Box Header --%>
								<div class="box-header with-border">
									<jsp:include page="/WEB-INF/view/common/admin/crud/header.jsp"></jsp:include>
								</div>
								<%-- Box Body --%>
								<div class="box-body">
									<%-- Message --%>
									<div>
										<la:info id="msg" message="true">
											<div class="alert alert-info">${msg}</div>
										</la:info>
										<la:errors />
									</div>
									<%-- Form Fields --%>
									<div class="form-group">
										<label for="name" class="col-sm-3 control-label"><la:message
												key="labels.user_name" /></label>
										<div class="col-sm-9">
											<c:if test="${crudMode==1}">
												<la:text property="name" styleClass="form-control" />
											</c:if>
											<c:if test="${crudMode==2}">
											${f:h(name)}
											<la:hidden property="name" styleClass="form-control" />
											</c:if>
										</div>
									</div>
									<div class="form-group">
										<label for="password" class="col-sm-3 control-label"><la:message
												key="labels.user_password" /></label>
										<div class="col-sm-9">
											<la:password property="password" styleClass="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="confirm_password" class="col-sm-3 control-label"><la:message
												key="labels.user_confirm_password" /></label>
										<div class="col-sm-9">
											<la:password property="confirmPassword"
												styleClass="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="roles" class="col-sm-3 control-label"><la:message
												key="labels.roles" /></label>
										<div class="col-sm-9">
											<la:select property="roles" multiple="true"
												styleClass="form-control">
												<c:forEach var="l" varStatus="s" items="${roleItems}">
													<la:option value="${l.id}">${f:h(l.name)}</la:option>
												</c:forEach>
											</la:select>
										</div>
									</div>
									<div class="form-group">
										<label for="groups" class="col-sm-3 control-label"><la:message
												key="labels.groups" /></label>
										<div class="col-sm-9">
											<la:select property="groups" multiple="true"
												styleClass="form-control">
												<c:forEach var="l" varStatus="s" items="${groupItems}">
													<la:option value="${l.id}">${f:h(l.name)}</la:option>
												</c:forEach>
											</la:select>
										</div>
									</div>
								</div>
								<!-- /.box-body -->
								<div class="box-footer">
									<jsp:include page="/WEB-INF/view/common/admin/crud/buttons.jsp"></jsp:include>
								</div>
								<!-- /.box-footer -->
							</div>
							<!-- /.box -->
						</div>
					</div>
				</la:form>
			</section>
		</div>
		<jsp:include page="/WEB-INF/view/common/admin/footer.jsp"></jsp:include>
	</div>
	<jsp:include page="/WEB-INF/view/common/admin/foot.jsp"></jsp:include>
</body>
</html>

