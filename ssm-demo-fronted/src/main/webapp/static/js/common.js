/*引入公共资源
var pathName = window.location.pathname.substring(1);
var webName = pathName == '' ? '' : pathName.substring(0, pathName.indexOf('/'));
document.writeln("<script type='text/javascript' src='/"+webName+"/static/plugins/jquery/jquery-3.4.1.min.js'></script>");
document.writeln("<script type='text/javascript' src='/"+webName+"/static/plugins/bootstrap-3.3.7/js/bootstrap.min.js'></script>");
document.writeln("<link type='text/css' rel='stylesheet' href='/"+webName+"/static/plugins/bootstrap-3.3.7/css/bootstrap.min.css'>");
document.writeln("<link type='text/css' rel='stylesheet' href='/"+webName+"/static/plugins/bootstrap-3.3.7/css/bootstrap-theme.min.css'>");
*/
document.writeln("<link type='text/css' rel='stylesheet' href='/"+webName+"/static/css/common.css'>");