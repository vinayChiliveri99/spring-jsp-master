<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <link href="webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
        }

        .register-form {
            width: 400px;
            height: auto;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            border-radius: 20px;
            background-color: #ffffff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

        h1, h2 {
            text-align: center;
        }
    </style>
</head>

<body>

    
    <br><br><br>
    <h1>To-Do Application</h1>
    <br>
    <h2>User Registration</h2>
    <div class="register-form">

        <div class="container-fluid">
            <form autocomplete="off" method="post">
    
                <div>
                	<pre>${errorMsg}</pre>
                	<pre>${successmessage}</pre>
                	<pre>${failuremessage}</pre>
                </div>
                <label for="userId">UserID</label>
                <input type="text" id="userId" name="userId" class="form-control mt-3" required />
              
                <label for="password">Password</label>
                <input type="password" name="password" class="form-control mt-3" required />
                <br>
               <input type="submit" value="register">
                <br><br>
                <div class="links">
                     <a href="/login">back to login</a>
                 </div>
            </form>
        </div>
    </div>

</body>
</html>
