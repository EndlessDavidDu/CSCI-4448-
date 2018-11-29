<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<script language="javascript">
    function checkEmpty(form) {
        var i;
        for (i = 0; i < form.length; i++) {
            if (form.elements[i].value === "") {
                alert("Form information cannot be empty");
                return false;
            }
        }
        return true;
    }
</script>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Back Management </title>
</head>

<html:html>
    <link href="css/css.css" rel="stylesheet" type="text/css">
    <body>


    <jsp:include page="bg-up.jsp" flush="true"/>
    <table width="788" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="170" valign="top">
                <jsp:include page="bg-left.jsp" flush="true"/>
            </td>
            <td width="618" align="center" valign="top" bgcolor="#FFFFFF"><br>

                <table width="610" height="25" border="0" cellpadding="0" cellspacing="0" background="image/bg_02.jpg">
                    <tr>
                        <td>
                            <div align="center"><strong>Add Manager Info</strong></div>
                        </td>
                    </tr>
                </table>
                <br>

                <html:form action="managerAction.do?action=3" onsubmit="return checkEmpty(managerForm)">
                <table width="58%" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#CCCCCC">
                    <tr>
                        <td width="25%" height="30">
                            <div align="center">User Name</div>
                        </td>
                        <td width="75%" bgcolor="#FFFFFF"><input name="account" type="text" size="35"></td>
                    </tr>
                    <tr>
                        <td height="30">
                            <div align="center">Password</div>
                        </td>
                        <td bgcolor="#FFFFFF"><input name="password" type="password" size="35"></td>
                    </tr>
                    <tr>
                        <td height="30">
                            <div align="center">Real Name</div>
                        </td>
                        <td bgcolor="#FFFFFF"><input name="name" type="text" size="35"><input name="sign" type="hidden"
                                                                                              value="0"></td>
                    </tr>
                </table>
                <br>
                <input type="image" class="input1" src="image/save.jpg" width="51" height="20">
                &nbsp;&nbsp;
                <a href="#" onClick="javascript:managerForm.reset()"><img src="image/clear.gif"></a>
                &nbsp;&nbsp;
                <a href="#" onClick="javasrcipt:history.go(-1)"><img src="image/back.gif"></a>
                </html:form>
                        <%
if(request.getAttribute("result")!=null){
%>
                <P align="center"><%=request.getAttribute("result")%>
                </P>
                        <%}%>
    </table>
    <jsp:include page="bg-down.jsp" flush="true"/>
    </body>
</html:html>