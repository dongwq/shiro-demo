<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>

	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <div id="page-body" role="main">
            <shiro:hasRole name='Admin'>
                <h2>role admin</h2>
            </shiro:hasRole>
            <hr/>
            <shiro:hasRole name='CS'>
                <h2>role cs</h2>
            </shiro:hasRole>
            <hr/>
            <h2>role None</h2>
            <hr/>

            <shiro:hasAnyRole in="['Admin','CS']">
                <h2>hasAnyRole admin</h2>
            </shiro:hasAnyRole>
            <hr/>
            <shiro:hasAnyRole in="['CS']">
                <h2>hasAnyRole cs</h2>
            </shiro:hasAnyRole>

       </div>

	</body>
</html>
