<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String tsmId=request.getParameter("tsmId")==null?"":request.getParameter("tsmId");
    String mac=request.getParameter("mac")==null?"":request.getParameter("mac");
    String jgDm=request.getParameter("jgDm")==null?"":request.getParameter("jgDm");
    String type=request.getParameter("type")==null?"":request.getParameter("type");
%>
<html>
<head>
    <title>首页</title>
    <script type='text/javascript' src='../../static/plugins/jquery/jquery-3.4.1.min.js'></script>
    <script type='text/javascript' src='../../static/plugins/bootstrap-3.3.7/js/bootstrap.min.js'></script>
    <script type='text/javascript' src='../../static/js/common.js'></script>
    <link type='text/css' rel="stylesheet" href='../../static/plugins/bootstrap-3.3.7/css/bootstrap.min.css'/>
    <link type='text/css' rel="stylesheet" href='../../static/plugins/bootstrap-3.3.7/css/bootstrap-theme.min.css'/>
    <link type='text/css' rel="stylesheet" href='../../static/css/common.css'/>
    <link type='text/css' rel="stylesheet" href='../../static/css/applyIndex.css'/>
    <script type="text/javascript" src="../../static/js/index/applyIndex.js"></script>
    <script type="text/javascript">
        var tsmId='<%=tsmId%>';
        var mac='<%=mac%>';
        var jgDm='<%=jgDm%>';
        var type='<%=type%>';
        if(!jgDm&&type=="1"){
            G3.alert("提示","地区代码为空",function(){
                external.close('');
            });
        }
    </script>
</head>
<body>
<div id="main">
    <div id="header"></div>
    <div id="content">
        <div class="banner_center">
            <%if("1".equals(type)){ %>
            <div id="toLoginPage" class="stepdiv" onclick="toLoginPage()">
                <img id="cld" alt="" src="" height="100" width="90"><br><font size="5">用户登录</font>
            </div>
            <div id="toRegPage" class="stepdiv" onclick="toRegPage()">
                <img id="badj" alt="" src="" height="100" width="100"><br><font size="5">用户注册</font>
            </div>
            <div id="toFindPass" class="stepdiv" onclick="toFindPass()">
                <img id="bgdj" alt="" src="" height="100" width="100"><br><font size="5">找回密码</font>
            </div>
            <%} else{%>
            <div id="toRegPage1" class="stepdiv" style="width:220px" onclick="toGtsldj()">
                <img id="badj" alt="" src="" height="100" width="100"><br><font size="5">个体工商户开业登记</font>
            </div>
            <div id="toFindPass1" class="stepdiv" style="width:220px" onclick="toMenulist()">
                <img id="bgdj" alt="" src="" height="100" width="100"><br><font size="5">申报进度查询</font>
            </div>
            <%} %>

        </div>
    </div>
    <div id="footer"></div>
</div>
</body>
</html>