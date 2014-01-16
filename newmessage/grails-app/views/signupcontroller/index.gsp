<%--
  Created by IntelliJ IDEA.
  User: vivekmaster146
  Date: 15/1/14
  Time: 6:51 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>

    <link  href=<g:createLinkTo dir="css" file="bootstrap.css"/> rel="stylesheet" >
    <link  href=<g:createLinkTo dir="css" file="bootstrap-theme.css"/> rel="stylesheet" >






</head>

<body>
<div>
    <a href="${createLink(uri: '/')}">Goto Home</a>
    &nbsp;&nbsp;<a href="${createLink(uri: '/sendmessage/index')}">Send Message</a>
    &nbsp;&nbsp;<a href="${createLink(uri: '/logout')}">Logout</a> <br><br>
<g:form class="form-horizontal col-lg-3"   controller="Postsignup" action="index">
    Username:- <g:textField class="form-control col-lg-3" name="username" value="${username}"></g:textField> <br>
    Password:- <g:passwordField class="form-control col-lg-3"   name="password" value="${password}"></g:passwordField> <br> <br><br>
    <g:submitButton class="btn btn-lg btn-success" name="Signup" value="SignUp" ></g:submitButton>


</g:form>
</div>
</body>
</html>