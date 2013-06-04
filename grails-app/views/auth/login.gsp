<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="layout" content="main" />
  <title>Login</title>

    <jq:jquery>
        $("#validBtn").click(function(){
            $("#validImg").attr("src", "<g:createLink controller= 'simpleCaptcha' action= 'captcha'/>");

            return false;
        });
    </jq:jquery>
</head>
<body>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <g:form action="signIn">
    <input type="hidden" name="targetUri" value="${targetUri}" />
    <table>
      <tbody>
        <tr>
          <td>Username:</td>
          <td><input type="text" name="username" value="${username}" /></td>
        </tr>
        <tr>
          <td>Password:</td>
          <td><input type="password" name="password" value="" /></td>
        </tr>

        <tr>
            <td>
                <label for="captcha">Valid Code:</label>
            </td>
            <td><g:textField name="captcha"/><img id="validImg" src="${createLink(controller: 'simpleCaptcha', action: 'captcha')}" width="100" height="30"/>
                <button id="validBtn">看不清，换一个</button>
            </td>

        </tr>
        <tr>
          <td>Remember me?:</td>
          <td><g:checkBox name="rememberMe" value="${rememberMe}" /></td>
        </tr>
        <tr>
          <td />
          <td><input type="submit" value="Sign in" /></td>
        </tr>
      </tbody>
    </table>
  </g:form>
</body>
</html>
