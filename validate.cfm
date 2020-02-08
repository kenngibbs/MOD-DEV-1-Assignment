<cfset form = form>
<cfset global_email = "test@test.com">
<cfset global_password = "test">

<cfscript>
    function login(email, password){
        return (email == global_email && password == global_password);
    }
</cfscript>

<cfoutput>
    <cfif #login(form.email_for_mod, form.password_for_mod)#>
        <cflock timeout=20 scope="Session" type="Exclusive">
            <cfset Session.email_for_mod = form.email_for_mod>
        </cflock>

        <cflocation url = "home.cfm">
    <cfelse>
        <cflocation url = "/">
    </cfif>
</cfoutput>
