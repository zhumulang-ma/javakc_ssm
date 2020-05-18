<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供应商管理添加页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/supplier/create.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>新增供应商</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_host">供应商编号：</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="supplierNumber" placeholder="无需填写可自动生成"/>
                          </div>
                          <label class="col-sm-2 control-label" for="ds_name">联系电话：</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="supplierPhone1" placeholder=""/>
                          </div>
                       </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_name">供应商名称：</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="supplierName" placeholder=""/>
                            </div>
                            <label class="col-sm-2 control-label" for="ds_username">供应产品：</label>
                            <div class="col-sm-4">
                                <javakc:select codeTp="supplyProducts" cls="col-sm-8" def="true"></javakc:select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_host">开始合作时间：</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="supplierStarttime" placeholder=""/>
                            </div>
                            <label class="col-sm-2 control-label" for="ds_name">其他联系电话：</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="supplierPhone2" placeholder=""/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_host">所在地区：</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="supplierRegion" placeholder=""/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_host">详细地址：</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="supplierAddress" placeholder=""/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_host">备注：</label>
                            <div class="col-sm-4">
                                <textarea rows="4" cols="100" name="supplierNote">
                                </textarea>
                            </div>
                        </div>



                    </fieldset>
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
                           	</div>
                           	<label class="col-sm-2 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
                              	<input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
                           	</div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
	<script type="text/javascript" src="./js/dictionary.js"></script>
</html>