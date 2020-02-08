<!--- I spent longer than I care to admit trying to get a link or button to clear the session data. Creating a new page is my short term solution until I figure out a more elegant way to clear the session before a user's click event. --->
<cfoutput>
    <cfset structClear(session)>
    <cflocation url = "/" addtoken="no">
</cfoutput>