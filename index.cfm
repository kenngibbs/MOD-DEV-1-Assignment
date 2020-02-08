<!--- Source for most of the answer: https://www.dreamincode.net/forums/topic/382099-tutorial-to-submit-a-form-and-then-access-those-form-attributes/ --->
<!--- https://community.adobe.com/t5/coldfusion/submit-form-and-execute-coldfusion-function/td-p/421101?page=1 --->

<html>
    <head>
        <title>MOD DEV 1 Assignment</title>
        <link>
    </head>
    <body>
        <form action="validate.cfm" method="post">
            <header>
                <h1>Please enter your credentials</h1>
            </header>

            <div>
                <label for="email_for_mod">Enter your email</label>
                <input id="email_for_mod" type="email" name="email_for_mod" placeholder="Ex: John.Smith@mindoverdata.com" autofocus/>
            </div>

            <div>
                <label for="password_for_mod">Enter your password</label>
                <input id="password_for_mod" type="password" name="password_for_mod"  placeholder="difficult_password"/>
            </div>

            <div>
                <button>Submit</button>
            </div>
        </form>

    </body>
</html>