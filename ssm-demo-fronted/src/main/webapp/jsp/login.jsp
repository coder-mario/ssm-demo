<%@ page import="org.apache.ibatis.session.SqlSessionFactory" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="org.apache.ibatis.io.Resources" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactoryBuilder" %>
<%@ page import="cc.blueday.login.dao.GCloudUsersMapper" %>
<%@ page import="java.util.Map" %>
<%--
  User: ma.li
  Date: 2019/4/1
  Time: 11:11
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    SqlSessionFactory sqlSessionFactory=null;
    String res="mybatis-config.xml";
    InputStream inputStream;
    SqlSession sessionw = null;
    try {
        inputStream= Resources.getResourceAsStream(res);
        sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
        sessionw = sqlSessionFactory.openSession(true);
        GCloudUsersMapper userMapper = sessionw.getMapper(GCloudUsersMapper.class);
        Map<String, Object> userMap = userMapper.getUserById("sdmali");
        System.out.println(userMap);
    }catch (Exception r){
        r.printStackTrace();
    } finally {
        if (sessionw != null) {
            sessionw.close();
        }
    }
%>
<html>
<head>
    <title>用户登录</title>
</head>
<body>

</body>
</html>
