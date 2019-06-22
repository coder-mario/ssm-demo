<%--
  User: ma.li
  Date: 2019/4/1
  Time: 11:11
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
<title>用户登录</title>
<script src="../../js/common.js"></script>
<script src="../../js/md5.min.js"></script>
<script type="text/javascript">
    function updateUser() {
        var salt = "1#2$3%4(5)6@7!poeeww$3%4(5)djjkkldss";
        $.ajax({
            url: "<%=basePath %>user/login",
            type: "POST",
            dataType: "json",
            data: {
                "id": $("#userid").val(),
                "password":hex_md5($("#password").val()+""+salt)
            },
            async: false,
            error: function(e) {
                alert(e);
            },
            success: function(data) {
                if(data.state=="1"){//登录成功
                    window.location.href="<%=basePath %>user/getUserById/"+data.userid;
                }else{//登录失败
                    alert("用户名或密码错误");
                }
            },
        });
    }

</script>
</head>
<body>
userid：<input type="text" name="id" id="userid" value="${user.userId }" />
password：<input type="password" name="password" id="password" value="${user.userName }" />
<input type="button" value="编辑" onclick="updateUser()" />
</body>
</html>
