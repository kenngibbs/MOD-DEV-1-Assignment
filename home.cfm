<cflock timeout=20 scope="Session" type="Exclusive">

<cfoutput>
    <!--- After some research isDefine doesn't work very well with sessions. structKeyExists is the perferred way to check for information. --->
    <cfif structKeyExists(Session,"email_for_mod")>
        <html>
            <head>
                <title>MOD DEV 1 Assignment</title>
                <link rel="stylesheet" type="text/css" href="mod_dev_1.css">
            </head>
            <body class="container_home">
                <div>
                    <header>
                            <h1>Welcome #Session.email_for_mod#</h1>
                    </header>
            
                    <div>
                        <a href="logout_user.cfm">Log Out</a>
                    </div>
                </div>
            </body>
        </html>

    <!--- If the user is not signed in, send them back to the home page. --->
    <cfelse>
        <cflocation url = "/" addtoken="no">
    </cfif>
</cfoutput>
</cflock>