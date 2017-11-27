﻿<%@page contentType="text/html;charset=utf-8" language="java"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="jphs" uri="http://www.jinpaihushi.com/jsp/core"%>
<table id="dateTable" cellpadding="0" cellspacing="0" class="data_table text-center">
	<thead>
		<tr >
			<th width="30"></th>
			<th>标题</th>
			<th>副标题</th>
			<th>排序</th>
			<th width="80">创建人</th>
			<th width="120">创建时间</th>
			<th width="60">状态</th>
			<th width="125">操作</th>
		</tr>
	</thead>
	<tbody>
			<c:choose>
				<c:when test="${fn:length(list) >0}">
					<c:forEach items="${list}" var="e" varStatus="s">
						<tr class="bg_list_body">
							<td width="30">${s.index+1}</td>
							<td><c:out value="${e.title}"/></td>
							<td><c:out value="${e.subTitle}"/></td>
							<td><c:out value="${e.sort}"/></td>
							<td><c:out value="${e.creatorName}"/></td>
							<td><fmt:formatDate value="${e.createTime}"
								pattern="yy-MM-dd HH:mm" /></td>
							<td><c:if test="${e.status == 0}">
									<span style="color: #34BC2C;"><c:out value="使用中" /></span>
								</c:if> <c:if test="${e.status == -1}">
									<span style="color: #F0BB1C;"><c:out value="已停用" /></span>
								</c:if></td>
							<td>
							<jphs:hasPermission url="/jkwy/package/detail.jhtml">
							<a onclick="redirectDetailPage('${e.id}')">
								<img src="/static/images/chakan.png">
							</a>								
							</jphs:hasPermission>
							<jphs:hasPermission url="/jkwy/package/redirectUpdate.jhtml">
								<a onclick="redirectUpdatePage('${e.id}')">
								<img  src="/static/images/xiugai.png">
							</a>
							</jphs:hasPermission>
							<jphs:hasPermission url="/jkwy/package/delete.jhtml">
							<c:if test="${e.status==0}">
								<a title="禁用" onclick="deleteById('${e.id}',-1)">
								<img style="width: 19px;height: 17px;"  src="/static/images/shanchu.png">
							</a>
							</c:if>
							<c:if test="${e.status==-1}">
								<a title="激活" onclick="deleteById('${e.id}',0)">
								<img style="width: 19px;height: 17px;" src="/static/images/activation.png">
							</a>
							</c:if>
							</jphs:hasPermission>									
							</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="20" align="center">没有可显示的记录。</td>
					</tr>
				</c:otherwise>
			</c:choose>
			</tbody>
		</table>
		<div class="page">
			<jphs:page pageInfos="${pageInfo}" ></jphs:page>	
		</div>
	</div>
	
</div>