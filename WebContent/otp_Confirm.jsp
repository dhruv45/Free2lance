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

      <form class="form-signin" action="Confirm_Password" method="post">
        <h2 class="form-signin-heading">Confirm OTP</h2>
        <div class="login-wrap">
        
            <input type="text" name="otp" class="form-control" placeholder="OTP" required="">

<input type="password" name="password" class="form-control" placeholder="enter new password" required="">

<input type="password" name="password1" class="form-control" placeholder="confirm password" required="">
            


            
            <br>
<input type="submit" class="btn btn-lg btn-login btn-block" value="Submit">
            
            <div class="login-social-link">
                
                
            </div>
            <div class="registration">
                Don't have an account yet?
                <a class="" href="index.jsp">
                    Create an account
                </a>
            </div>

        </div>

          <!-- Modal -->
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade" style="display: none;">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                          <h4 class="modal-title">Forgot Password ?</h4>
                      </div>
                      <div class="modal-body">
                          <p>Enter your e-mail address below to reset your password.</p>
                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">

                      </div>
                      <div class="modal-footer">
                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                          <button class="btn btn-success" type="button">Submit</button>
                      </div>
                  </div>
              </div>
          </div>
          <!-- modal -->

      </form>

    </div>



    <!-- js placed at the end of the document so the pages load faster -->
    <script src="js\jquery.js"></script>
    <script src="js\bootstrap.js"></script>


  

</body></html>