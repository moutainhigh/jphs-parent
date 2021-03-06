﻿<%@page contentType="text/html;charset=utf-8" language="java"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<form method="get" action="/order/index.jhtml" id="serach-form">
<div class="clearfix">
	<table class="text-right ">
		<tr>
		<%-- <input type="hidden" name="schedule" id="schedule" value="${order.schedule}" /> --%>
			<td>下单人：</td>
			<td width="200">
				<input type="text" name="userName" id="userName" value="${order.userName}" />
			</td>
			<td>用户手机号：</td>
			<td width="200">
				<input type="text" name="phone" id="phone" value="${order.phone}" />
			</td>
			<td>服务名称：</td>
			<td width="200">
				<input type="text" name="title" id="title" value="${order.title }" />
			</td>
			</tr>
			<tr>
			<td>护士名称：</td>
			<td width="200">
				<input type="text" name="nurseName" id="nurseName" value="${order.nurseName}" />
			</td>
			<td>护士手机号：</td>
			<td width="200">
				<input type="text" name="nursePhone" id="nursePhone" value="${order.nursePhone}" />
			</td>
				<td>订单类型：</td>
			<td width="200">
					<select class="form-control input-xlarge" id="type"
					name="type">
					<option value="" >全部订单</option>
					<option value="1"
						<c:if test="${order.type==1}">selected="selected"</c:if>>指定单</option>
					<option value="2"
						<c:if test="${order.type==2}">selected="selected"</c:if>>抢单</option>
				</select>
			</td>
			
		</tr>
		<tr>
			<td>订单编号：</td>
			<td width="200">
				<input type="text" name="orderNo" id="orderNo" value="${order.orderNo}" />
			</td>
			<%-- <td>订单来源：</td>
			<td width="200">
					<select class="form-control input-xlarge" id="device"
					name="device">
					<option value=""
						<c:if test="${order.device==0}">selected="selected"</c:if>>请选择</option>
					<option value="1"
						<c:if test="${order.device==1}">selected="selected"</c:if>>IOS</option>
					<option value="2"
						<c:if test="${order.device==2}">selected="selected"</c:if>>安卓</option>
						<option value="3"
						<c:if test="${order.device==3}">selected="selected"</c:if>>微信</option>
						<option value="4"
						<c:if test="${order.device==4}">selected="selected"</c:if>>114等网站</option>
						<option value="5"
						<c:if test="${order.device==5}">selected="selected"</c:if>>后台</option>
				</select>
			</td> --%>
			<td>订单状态：</td>
			<td width="200">
					<select class="form-control input-xlarge" id="schedule"
					name="schedule">
					<option value="" >全部订单</option>
					<option value="0"
						<c:if test="${order.schedule==0}">selected="selected"</c:if>>待支付</option>
					<option value="1"
						<c:if test="${order.schedule==1}">selected="selected"</c:if>>待接单</option>
					<option value="2"
						<c:if test="${order.schedule==2}">selected="selected"</c:if>>已接单</option>
						<option value="3"
						<c:if test="${order.schedule==3}">selected="selected"</c:if>>执行中</option>
						<option value="4"
						<c:if test="${order.schedule==4}">selected="selected"</c:if>>待确定</option>
						<option value="5"
						<c:if test="${order.schedule==5}">selected="selected"</c:if>>已完成</option>
						<option value="6"
						<c:if test="${order.schedule==6}">selected="selected"</c:if>>已取消</option>
						<option value="7"
						<c:if test="${order.schedule==7}">selected="selected"</c:if>>申诉中</option>
						<option value="8"
						<c:if test="${order.schedule==8}">selected="selected"</c:if>>已失效</option>
				</select>
			</td>
			</td>
		</tr>
		<tr>
			<td>下单时间：</td>
			<td width="200"><div class="form-group">
						<div style="width: 120%;"
							class="input-group date form_date col-md-3" data-date=""
							data-date-format="yyyy-mm-dd" data-link-field="workYears"
							data-link-format="yyyy-mm-dd">
							<input class="form-control" id="beginTime"
								name="beginTime"
								value="<fmt:formatDate value="${order.beginTime }" type="both" pattern="yyyy-MM-dd" />"
								size="14" placeholder="请选择下单时间" type="text" value="" readonly>
							<span class="input-group-addon"><span
								class="glyphicon glyphicon-remove"></span></span> <span
								class="input-group-addon"><span
								class="glyphicon glyphicon-calendar"></span></span> 
						</div>
						</td><td>-
							</td><td>
						<div style="width: 100%;"
							class="input-group date form_date col-md-3" data-date=""
							data-date-format="yyyy-mm-dd" data-link-field="workYears"
							data-link-format="yyyy-mm-dd">
							<input class="form-control" id="stopTime"
								name="stopTime"
								value="<fmt:formatDate value="${order.stopTime }" type="both" pattern="yyyy-MM-dd" />"
								size="14" placeholder="请选择下单时间" type="text" value="" readonly>
							<span class="input-group-addon"><span
								class="glyphicon glyphicon-remove"></span></span> <span
								class="input-group-addon"><span
								class="glyphicon glyphicon-calendar"></span></span> 
						</div>
					</div></td> 
		</tr>
	</table>
	<div class="marage_search_btn">
		<button type="submit" class="search_btn" data-role="search-btn">搜索</button>
		<button id="clear" class="search_btn">清空</button>
	</div>
</div>
</form>

