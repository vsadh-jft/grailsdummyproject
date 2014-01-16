<%--
  Created by IntelliJ IDEA.
  User: vivekmaster146
  Date: 16/1/14
  Time: 3:02 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
Hello! <sec:username/> &nbsp;&nbsp;<a href="${createLink(uri: '/')}">Goto Home</a>
&nbsp;&nbsp;<a href="${createLink(uri: '/sendmessage/index')}">Send Message</a>
&nbsp;&nbsp;<a href="${createLink(uri: '/logout')}">Logout</a>
<br>
<br>
<br>
Messages:-
<br>
<br>
<g:each in="${message}" var="p"> ${p.fromuser} : ${p.messcontent} <div style="margin-right:-170px"> Time:<a style="color: red"> ${p.date}
</a></div>

%{--<g:each in="${message.keySet()}" var="p">  ${p}:- <g:each in="${message.get(p)}" var="n"> <li> ${n.messcontent}</li> </g:each> <br>--}%
<br></g:each>

</body>
</html>