
<%--
  Created by IntelliJ IDEA.
  User: vivekmaster146
  Date: 16/1/14
  Time: 11:47 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title> Send Message</title>
        <style type="text/css"
        >
        input, select {
            margin:30px;
            padding:10px;
            font-size:0.85em /* this is optional, I like the fonts a little smaller */;
            outline:groove;
            font-family:inherit; box-sizing:border-box /* make sure you use the other vendor prefixes */;
        }
            </style>
</head>


<body>
<a href="${createLink(uri: '/')}">Goto Home</a>
&nbsp;&nbsp;<a href="${createLink(uri: '/sendmessage/index')}">Send Message</a>
&nbsp;&nbsp;<a href="${createLink(uri: '/logout')}">Logout</a>

<sec:ifLoggedIn>

    <g:form controller="sendmessage"  action="send" >
        <pre>
            <p style="font-size: 16">    From:-      <sec:username/></p>



 Select User:-<g:select id="userlist" name="userlist" from="${userlist}" value="" noSelection="['':'Please Select...']" >

</g:select><br>   Message:-
                 <g:textArea name="messcontent" maxlength="500" rows="10" placeholder="Enter your message"></g:textArea>
<g:submitButton name="submit" value="Submit" >

</g:submitButton>
        </pre>
    </g:form>

</sec:ifLoggedIn>

</body>
</html>