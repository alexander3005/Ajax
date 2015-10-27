<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>
    </title>
    <script type="text/javascript">
      function ajaxCall()
      {
        var xmlhttp;
        if(window.XMLHttpRequest)
        {
          xmlhttp = new XMLHttpRequest();
        }
        else{
          xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function()
        {
          if(xmlhttp.readyState ==4 && xmlhttp.status ==200){
            document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
          }
        }
        xmlhttp.open("POST","AjaxServlet?userName="+document.getElementById("userName").value,true);
        xmlhttp.send();
      }
    </script>
  </head>
<body>
<br/>  Your name:
 <input type="text" id="userName" onclick="ajaxCall()"/>


<div id="myDiv" style="color: green; font-weight: bold"></div>
<br/>
  </body>
</html>

