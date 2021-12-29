<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_c_out_label
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2021/12/29
  Time(创建时间)： 11:46
  Description(描述)： <c:out>标签
  JSTL <c:out> 标签与 JSP 表达式<%= %> 作用相似，用于把表达式的结果输出到页面中。它们的区别就是 <c:out> 标签可以直接通过.操作符来访问属性。
  比如访问 user.address.city，只需要这样写：<c:out value="user.address.city">。
  JSP <c:out> 标签语法如下：
<c:out value="表达式" [default="表达式"] [escapeXml="<true|false>"] />
value：指定要输出的内容
default：可选项，指定输出的默认值
escapeXml：可选项，默认为 true。表示是否转换特殊字符，如将<转换为&lt;，>转换为&gt;等
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>
    <c:out value="hello world"/>
    <br/>
    <c:out value="不转换特殊字符：&lt &gt" escapeXml="true" default="defaultValue"/>
    <br/>
    <c:out value="转换特殊字符：&lt &gt" escapeXml="false" default="defaultValue"/>
    <br/>
    <c:out value="${null}" escapeXml="false" default="defaultValue"/>
    <br/>
</h3>
</body>
</html>
