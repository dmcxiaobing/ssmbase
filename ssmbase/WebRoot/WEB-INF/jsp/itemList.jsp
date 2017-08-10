<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
<title>查询商品列表</title>
</head>
<body> 
<script type="text/javascript">
	function sendJson(){
		//请求json响应。响应json
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath }/items/sendJson.action",
			contentType:"application/json;charset=utf-8",
			data:'{"name":"测试json商品","price":99.9}',
			success:function(data){
				alert(data);
			}
		});
	}
</script>
<input type="button" value="sendJson" onclick="sendJson()"/>

<form action="${pageContext.request.contextPath }/items/updateAll.action" method="post">
<%-- <form action="${pageContext.request.contextPath }/search.action" method="post"> --%>
查询条件：
<table width="100%" border=1>
<tr>
<!-- 如果Controller中接收的是Vo,那么页面上input框的name属性值要等于vo的属性.属性.属性..... -->
<td>商品名称:<input type="text" name="items.name"/></td>
<td>商品价格:<input type="text" name="items.price"/></td>
<!-- <td><input type="submit" value="查询"/></td> -->
<td><input type="submit" value="批量修改"/></td>
</tr>
</table>
商品列表：<!-- 一个表格 -->
<table width="100%" border=1>
<!-- 一列 -->
<tr>
	<td>商品名称</td>
	<td>商品价格</td>
	<td>生产日期</td>
	<td>商品描述</td>
	<td>操作</td>
</tr>
<c:forEach items="${itemList }" var="item" varStatus="status">
<!-- 根据数量遍历列的值 ....varStatus可以根据属性获取到当前位置-->
<tr>
	<!-- name属性名称要等于vo中的接收的属性名
		如果批量删除，可以用List<pojo>来接受，页面上input框的name属性值=vo中接收的集合属性名称+[list的下标]+.+list泛型的属性名称
	 -->
	 <td>
	 	<input type="checkbox" name="ids" value="${item.id }"/>
	 	<input type="hidden" name="itemsList[${status.index }].id" value="${item.id }"/>
	 </td>
	<td><input type="text" name="itemsList[${status.index }].name" value="${item.name }"/></td>
	<td><input type="text" name="itemsList[${status.index }].price" value="${item.price }"/></td>
	<td><input type="text" name="itemsList[${status.index }].createtime" value="<fmt:formatDate value="${item.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/>"/></td>
	<td><input type="text" name="itemsList[${status.index }].detail" value="${item.detail }"/></td>

	<td><a href="${pageContext.request.contextPath }/items/itemEdit/${item.id}">修改</a></td>

</tr>
</c:forEach>

</table>
</form>
</body>

</html>