<html lang="en"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>FlatLab - Flat &amp; Responsive Bootstrap Admin Template</title>

    <!-- Bootstrap core CSS -->
    <link href="css\bootstrap.css" rel="stylesheet">
    <link href="css\bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets\font-awesome\css\font-awesome.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css\style.css" rel="stylesheet">
    <link href="css\style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

  <body class="login-body">

    <div class="container">

      <form class="form-signin" action="Company_Registration" method="post">
        <h2 class="form-signin-heading">Company registration</h2>
        <div class="login-wrap">
            <p>Enter your personal details below</p>
            ${error}
            <input type="text" name="companyName" class="form-control" placeholder="Company Name" autofocus="" required="">
            
            <input type="email" name="email" class="form-control" placeholder="Email" autofocus="" required="">
            <div class="btn-group dropup">
                                  
                                  
                                  
                              </div>
            

            
            <br>
            <br>
<input type="text" name="userid" class="form-control" placeholder="User Name" autofocus="" required="">
            <input type="password" name="password" class="form-control" placeholder="Password" required="">
            






<input type="text" name = "website" class="form-control" placeholder="Comapny Website" required="">
Company Description:<textarea name="companyDescription" style="margin: 0px; width: 290px; height: 94px;"></textarea><br>
            
             <br>
            <br>
            
            <input type="Year" name="founded" class="form-control" placeholder="Founded" required="">
            <br>
<input type="submit" class="btn btn-lg btn-login btn-block" value="Submit"><div class="registration">
                Already Registered.
                <a class="" href="login.jsp">
                    Login
                </a>
            </div>

        </div>

      </form>

    </div>


  

</body></html>