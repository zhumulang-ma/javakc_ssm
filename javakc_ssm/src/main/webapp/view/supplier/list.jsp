<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供应商管理展示列表页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">
						<span>供应商名称：</span><input type="text" value="111"/>
						<span>供应商所在地：</span><input type="text" value="222"/>
						<span>供应商产品：</span><javakc:select codeTp="supplyProducts" cls="" def="true"></javakc:select>
						<button><i class="" aria-hidden="true"></i>搜索</button>
					</div>
	                <div  style="text-align: right">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="supplier/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增
	                        </button>
	                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="dictionary/view.do">
	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>刷新
	                        </button>
	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="dictionary/delete.do">
	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>导出
	                        </button>

		                 </div>
	                </div>
	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
					                <th>供应商编号</th>
					                <th>供应商名称</th>
					                <th>所在地区</th>
									<th>供应产品</th>
									<th>联系电话</th>
									<th>详细地址</th>
									<th>创建时间</th>
									<th>操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids" value="${e.id }"/></td>
						                <td>${e.supplierNumber }</td>
						                <td>${e.supplierName }</td>
						                <td>${e.supplierRegion }</td>
										<td>${e.supplyProducts }</td>
										<td>${e.supplierPhone1 }</td>
										<td>${e.supplierAddress }</td>
										<td>${e.updatedTime }</td>
										<td><a>查看</a>  <a>编辑</a></td>
						            </tr>
					            </c:forEach>
					        </tbody>
					    </table>
				    <div class="page">${page}</div>
			     </div>
			     </form>
			</div>
		</div>
	</body>
</html>