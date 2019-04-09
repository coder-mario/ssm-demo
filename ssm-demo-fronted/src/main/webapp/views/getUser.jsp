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
    <title>用户信息</title>
    <script type="text/javascript">
        function updateUser() {
            var form = document.forms[0];
            form.action = "<%=basePath %>user/getUserById";
            form.method = "post";
            form.submit();
        }
    </script>
</head>
<body>
    <form action="" name="userForm">
        userid：<input type="text" name="id" value="${user.password }" />
        username：<input type="text" name="username" value="${user.password }" />
        <input type="button" value="编辑" onclick="updateUser()" />
    </form>
</body>
</html>
