﻿<%@page contentType="text/html;charset=utf-8" language="java"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="jphs" uri="http://www.jinpaihushi.com/jsp/core"%>
<div style="margin: 10px 10px 10px 10px;">
	<div class="common_right_title">
		<img src="/static/images/yousanjiaox.png" />订单管理 <i
			class="public1-horn-45"></i>商品订单<i class="public1-horn-45"></i>订单列表<i class="public1-horn-45"></i>订单详情
	</div>
	<div class="marage_right_content">
	<div class="clearfix">
	
	<c:if test="${commodityOrder.flag == 1 }">
		<c:if test="${commodityOrder.schedule == 1 }">
			<button class="public-info public_btn public_btn_center" data-toggle="modal" data-target="#fhModal">发货</button>
		</c:if>
	</c:if>
	<input type="button" class="public-info public_btn public_btn_left"
				name="button1" id="button1" value="返回" onclick="history.go(-1)" />
	<button class="public-info public_btn public_btn_center" data-toggle="modal" data-target="#remark">编辑备注</button>
	<!-- <button class="public-info public_btn public_btn_left" >打印</button> -->
	
	</div>
	<div class="mr-50 ml-50 pb-20" >
		<jsp:include page="form.jsp"></jsp:include>
	</div>
</div>
