<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.json.JSONArray"%>
<%@ page import="org.json.JSONObject"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jccc</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.3/style/weui.min.css">
<link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.1/css/jquery-weui.min.css">
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>


</head>
<body background="img\pcl2.jpg" >
<font size=15 color=blue>
<%int a=Integer.parseInt(request.getParameter("a"));
 int b=Integer.parseInt(request.getParameter("b"));
 String c=request.getParameter("c");
 Double d=Double.valueOf(request.getParameter("d"));
 String estr=request.getParameter("e");
//out.println(estr);


try{
	//将Json字符串转为java对象
JSONObject obj=new JSONObject(estr);
//只有json对象才方便取里面值
//out.println(obj.getInt("a"));
}catch(Exception e)
{
	e.printStackTrace();
}

%>
<% if (a!=0  || b!=0 ) { %>

<td>
<%=a%>和
<%=b %>,</br>
</td>


<td>加等于:
<%=a+b %>,</br>
</td>


<td>减等于:
<%=a-b %>,</br>
</td>


<td>乘等于:
<%=a*b %>,</br>
</td>

<td>除等于:
<%=a/b %>
</td>


<% if (a%b == 0 ) { %>
      
<% } else { %>
     <td>,余等于:
<%=a%b%>
</td>
<% } %>
</br>

<% } %>

<td>拖式計算:


<%=c+"="+d%>


</td>
</br>
<td>约等于:

<%
java.text.DecimalFormat df =new java.text.DecimalFormat("#.00");
String av=df.format(d);
 
 out.println(av);%>


</td>



</font>
</body>
</html>