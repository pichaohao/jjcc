<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<title>jsq</title>

</head>
<script type="text/javascript">
function chkacc(){

var atext = document.getElementById("a").value;
var btext = document.getElementById("b").value;
var ctext = document.getElementById("c").value;
document.getElementById("d").value	= eval(ctext);
//az表示字符串，把id为a，b的值取组合成字符串
var az= '{"a":'+atext+',"b":'+btext+'}';
//document.getElementById("e").value	= az;


//字符串转对象的练习
var jsObject = JSON.parse(az);
//alert(jsObject.a);对象好处可以取值
//对象转字符串的练习
var azstr = JSON.stringify(jsObject);

document.getElementById("e").value	= azstr;

}
</script>




<font size=15>



<form action=c.jsp>
<tr>
<td>左边数字:<input class="form-control" id=a size=30 type=int name=a value=1></input></td></br>
<td>右边数字:<input class="form-control" id=b size=30 type=int name=b value=1 ></input></td></br>
<td>拖式計算:<input class="form-control" id=c size=30 type=String name=c value=1+1-1*1/1></td>
<input type=hidden id=d name=d ></input>
<input  type=hidden id=e name=e ></input>
</font>
<button class="btn btn-success" type="submit" onclick="chkacc()">开始计算</button>

</tr>
 </form>

</html>