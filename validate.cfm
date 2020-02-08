<!--- This is putting the form post data into the form variable --->
<cfset form = form>

<cfinclude template = "global_config.cfm">
<!--- runOnce = "true|false"> --->
<!--- <cfset global_email = "test@test.com">
<cfset global_password = "test"> --->

<!--- This function is validating the form data against the global variables. --->
<cfscript>
    function login(email, password){
        return (email == global_email && password == global_password);
    }
</cfscript>

<cfoutput>
    <!--- If the username and password is valid, add their username into the session and send them to the home page. --->
    <cfif #login(form.email_for_mod, form.password_for_mod)#>
        <cflock timeout=20 scope="Session" type="Exclusive">
            <cfset Session.email_for_mod = form.email_for_mod>
        </cflock>
        
        <cflocation url = "home.cfm" addtoken="no">

    <!--- If validation fails, send them back to the home page with a invalid parameter. --->
    <cfelse>
        <cflocation url = "/?invalid=true" addtoken="no">
    </cfif>
</cfoutput>
