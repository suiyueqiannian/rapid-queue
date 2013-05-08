<%@page import="com.google.code.rapid.queue.metastore.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>


	<tr>	
		<td class="tdLabel">
			<span class="required">*</span>交换机名称:
		</td>		
		<td>
		<form:input path="exchangeName" id="exchangeName" cssClass="required " maxlength="50" />
		<font color='red'><form:errors path="exchangeName"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span>虚拟host:
		</td>		
		<td>
		<form:input path="vhostName" id="vhostName" cssClass="required " maxlength="50" />
		<font color='red'><form:errors path="vhostName"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			备注:
		</td>		
		<td>
		<form:input path="remarks" id="remarks" cssClass="" maxlength="200" />
		<font color='red'><form:errors path="remarks"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span>是否持久性交换机:
		</td>		
		<td>
		<form:input path="durable" id="durable" cssClass="required validate-integer max-value-2147483647" maxlength="3" />
		<font color='red'><form:errors path="durable"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span>是否自动删除:
		</td>		
		<td>
		<form:input path="autoDelete" id="autoDelete" cssClass="required validate-integer max-value-2147483647" maxlength="3" />
		<font color='red'><form:errors path="autoDelete"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			类型: topic,fanout,direct:
		</td>		
		<td>
		<form:input path="type" id="type" cssClass="" maxlength="30" />
		<font color='red'><form:errors path="type"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			当前交换机大小:
		</td>		
		<td>
		<form:input path="size" id="size" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="size"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			交换机的大小:
		</td>		
		<td>
		<form:input path="maxSize" id="maxSize" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="maxSize"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span>创建时间:
		</td>		
		<td>
		<input value='<fmt:formatDate value="${exchange.createdTime}" pattern="yyyy-MM-dd"/>' onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" id="createdTime" name="createdTime"  maxlength="0" class="required " />
		<font color='red'><form:errors path="createdTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			操作人员:
		</td>		
		<td>
		<form:input path="operator" id="operator" cssClass="" maxlength="50" />
		<font color='red'><form:errors path="operator"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			最后更新时间:
		</td>		
		<td>
		<input value='<fmt:formatDate value="${exchange.lastUpdatedTime}" pattern="yyyy-MM-dd"/>' onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" id="lastUpdatedTime" name="lastUpdatedTime"  maxlength="0" class="" />
		<font color='red'><form:errors path="lastUpdatedTime"/></font>
		</td>
	</tr>	
	
		