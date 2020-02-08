<cflock timeout=20 scope="Session" type="Exclusive">

<cfoutput>
    <!--- After some research isDefine doesn't work very well with sessions. structKeyExists is the perferred way to check for information. --->
    <cfif structKeyExists(#Session,email_for_mod#)>
    <!--- <cfif true> --->
        <html>
            <head>
                <title>MOD DEV 1 Assignment</title>
                <link>
            </head>
            <body>
                <header>
                    <cfoutput>
                        <h1>Welcome #Session.email_for_mod#</h1>
                    </cfoutput>
                </header>
        
                <div>
                    <a href="index.cfm">Log Out</a>
                </div>
        
            </body>
        </html>
    <cfelse>
        <cflocation url = "/">
    </cfif>
</cfoutput>
</cflock>
<!--- <html>
    <head>
        <title>MOD DEV 1 Assignment</title>
        <link>
    </head>
    <body>
        <header>
            <cfoutput>
                <h1>Welcome #Session.email_for_mod#</h1>
            </cfoutput>
        </header>

        <div>
            <a href="index.cfm">Log Out</a>
        </div>

    </body>
</html> --->