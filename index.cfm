<!--- Here are the primary resources I used to answer the question

Source for most of the answer: https://www.dreamincode.net/forums/topic/382099-tutorial-to-submit-a-form-and-then-access-those-form-attributes/
https://community.adobe.com/t5/coldfusion/submit-form-and-execute-coldfusion-function/td-p/421101?page=1
https://community.adobe.com/t5/coldfusion/logout-issue/td-p/6046991?page=1 --->

<cfparam name="invalid" default="" type="string">

<html>
    <head>
        <title>MOD DEV 1 Assignment</title>
        <link rel="stylesheet" type="text/css" href="mod_dev_1.css">
    </head>
    <body class="container">
        <div>
            <header>
                <h1>Please enter your credentials</h1>
            </header>
            
            <!--- This is checking to see if the URL is returning invalid --->
            <cfoutput>
                <cfif #invalid# eq "true" >
                    <div id="error_message">
                        Username or Password is incorrect.
                    </div>
                </cfif>
            </cfoutput>

            <!--- This form will submit the form's information to the validation page. --->
            <form id="login_form" action="validate.cfm" method="post">
                <div>
                    <label for="email_for_mod">Email</label>
                    <input id="email_for_mod" type="email" name="email_for_mod" placeholder="Ex: John.Smith@mindoverdata.com" autofocus/>
                </div>

                <div>
                    <label for="password_for_mod">Password</label>
                    <input id="password_for_mod" type="password" name="password_for_mod"  placeholder="difficult_password"/>
                </div>

                <div>
                    <button>Submit</button>
                </div>
            </form>
        </div>
    </body>
</html>