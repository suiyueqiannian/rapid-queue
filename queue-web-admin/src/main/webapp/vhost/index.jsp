<%@page import="com.google.code.rapid.queue.metastore.model.*" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title>Vhost 维护</title>
	
	<script src="${ctx}/js/rest.js" ></script>
	<link href="<c:url value="/widgets/simpletable/simpletable.css"/>" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/widgets/simpletable/simpletable.js"/>"></script>
	
	<script type="text/javascript" >
		$(document).ready(function() {
			// 分页需要依赖的初始化动作
			window.simpleTable = new SimpleTable('queryForm',${page.paginator.page},${page.paginator.pageSize},'${pageRequest.sortColumns}');
		});
	</script>
</rapid:override>

<rapid:override name="content">
	<form id="queryForm" name="queryForm" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<tr>	
					<td class="tdLabel">备注</td>		
					<td>
						<input value="${query.remarks}" id="remarks" name="remarks" maxlength="200"  class=""/>
					</td>
					<td class="tdLabel">实际部署的主机</td>		
					<td>
						<input value="${query.host}" id="host" name="host" maxlength="50"  class=""/>
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/vhost/index.do'"/>
			<input type="button" class="stdButton" style="width:80px" value="新增" onclick="window.location = '${ctx}/vhost/add.do'"/>
		<div>
	
	</div>
	
	<div class="gridTable">
	
		<simpletable:pageToolbar paginator="${page.paginator}">
		显示在这里是为了提示你如何自定义表头,可修改模板删除此行
		</simpletable:pageToolbar>
	
		<table width="100%"  border="0" cellspacing="0" class="gridBody">
		  <thead>
			  
			  <tr>
				<th style="width:1px;"> </th>
				
				<!-- 排序时为th增加sortColumn即可,new SimpleTable('sortColumns')会为tableHeader自动增加排序功能; -->
				<th sortColumn="vhostName" >vhost</th>
				<th sortColumn="remarks" >备注</th>
				<th sortColumn="host" >实际部署的主机</th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.itemList}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.paginator.startRow + status.index}</td>
				
				<td><c:out value='${item.vhostName}'/>&nbsp;</td>
				<td><c:out value='${item.remarks}'/>&nbsp;</td>
				<td><c:out value='${item.host}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/exchange/index.do?vhostName=${item.vhostName}">管理exchange</a>&nbsp;&nbsp;
					<a href="${ctx}/queue/index.do?vhostName=${item.vhostName}">管理queue</a>&nbsp;&nbsp;
					<a href="${ctx}/binding/index.do?vhostName=${item.vhostName}">管理binding</a>&nbsp;&nbsp;
					<a href="${ctx}/vhost/show.do?vhostName=${item.vhostName}">查看</a>&nbsp;&nbsp;
					<a href="${ctx}/vhost/edit.do?vhostName=${item.vhostName}">修改</a>&nbsp;&nbsp;
					<a href="${ctx}/vhost/delete.do?vhostName=${item.vhostName}" onclick="doRestDelete(this,'你确认删除?');return false;">删除</a>
				</td>
			  </tr>
			  
		  	  </c:forEach>
		  </tbody>
		</table>
	
		<simpletable:pageToolbar paginator="${page.paginator}">
		显示在这里是为了提示你如何自定义表头,可修改模板删除此行
		</simpletable:pageToolbar>
		
	</div>
	</form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>

