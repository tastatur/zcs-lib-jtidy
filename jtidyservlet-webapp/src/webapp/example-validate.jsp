<%@ include file="include/header.jsp" %>

<%@ page import="org.w3c.tidy.servlet.util.HTMLEncode"%>

<jtidy:pass/>

<h3>Validate your HTML using JTidy</h3>

<%
    String badHtml = request.getParameter("badHtml");
    if (badHtml == null) {
        badHtml = "";
    }
%>

Enter the HTML Fragmet to be validated as part of this page.
<form action="<%=request.getRequestURI()%>" method=post>
    <textarea name="badHtml" rows=10 cols=62><%=HTMLEncode.encode(badHtml).trim()%></textarea>
    <input type=submit value="Try it!">
</form>

Start of you HTML fragemt:<br>
<div>
<!-- ## TEST CODE STARTS HERE ### -->
<%=badHtml%>
<!-- ## TEST CODE ENDSS HERE ### -->
</div>
<br>End of you HTML fragemt.<br>

Click here to see what was wrong: <jtidy:validationImage/>

<%@ include file="include/footer.jsp" %>