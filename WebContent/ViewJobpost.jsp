<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*" %>
 <%@ page import="java.lang.*" %>
 <%@ page import="freelancing.ViewJobpostings" %>
 <%@ page import="VO.JobRecord" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="sb-init" style="overflow: hidden;"><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Mosaddek">
<meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="img/favicon.png">
<title>Job Postings</title>

<!-- Bootstrap core CSS -->
<link href="css\bootstrap.css" rel="stylesheet">
<link href="css\bootstrap-reset.css" rel="stylesheet">
<!--external css-->
<link href="assets\font-awesome\css\font-awesome.css" rel="stylesheet">
<!--right slidebar-->
<link href="css\slidebars.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css\style.css" rel="stylesheet">
<link href="css\style-responsive.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
<style id="__web-inspector-hide-shortcut-style__" type="text/css">
.__web-inspector-hide-shortcut__, .__web-inspector-hide-shortcut__ *, .__web-inspector-hidebefore-shortcut__::before, .__web-inspector-hideafter-shortcut__::after
{
    visibility: hidden !important;
}
</style></head>
<body class="boxed-page">
	<div class="container"><section id="container" class="">
			<!--header start-->
			<header class="header white-bg">
				<div class="container ">
					<div class="sidebar-toggle-box">
						<div data-original-title="Toggle Navigation" data-placement="right" class="fa fa-reorder tooltips"></div>
					</div>
					<!--logo start-->
					<a href="index.html" class="logo">Free2<span>lance</span></a>
					<!--logo end-->
					<div class="nav notify-row" id="top_menu">
						<!--  notification start -->

					</div>
					<div class="top-nav ">
						
					</div>
				</div>
			</header>
			<!--header end-->
			<!--sidebar start-->
			<aside>
				<div id="sidebar" class="nav-collapse " tabindex="5000" style="overflow: hidden; outline: none;">
					<!-- sidebar menu start-->
					<ul class="sidebar-menu" id="nav-accordion" style="">
						<li><a href="index.jsp"> <i class="fa fa-dashboard"></i> <span>Home</span>
						</a></li>

						<li class="sub-menu dcjq-parent-li"><a href="company_Dashboard.jsp" class="dcjq-parent"> <i class="fa fa-laptop"></i> <span>Dashboard</span> </a> </li>

						<li class="sub-menu dcjq-parent-li"><a href="company_Jobpost.jsp" class="dcjq-parent active"> <i class="fa fa-book"></i> <span>Post a job</span> </a></li>
						<li class="sub-menu dcjq-parent-li"><a href="ViewJobpost.jsp" class="dcjq-parent active"> <i class="fa fa-book"></i> <span>View Job Posts</span> </a></li>
<li class="sub-menu dcjq-parent-li"><a href="login.jsp" class="dcjq-parent active"> <i class="fa fa-book"></i> <span>Logout</span> </a></li>

						<li class="sub-menu dcjq-parent-li"></li>
						<li class="sub-menu dcjq-parent-li"></li>
						<li class="sub-menu dcjq-parent-li"></li>










						<!--multi level menu end-->

					</ul>
					<!-- sidebar menu end-->
				</div>
			</aside>
			<!--sidebar end-->
			<!--main content start-->
			<section id="main-content">
				<section class=" wrapper">

					<div>
						<section class="panel">
							

	<div class="row">
                  <aside class="profile-info col-lg-9">
                      <section class="panel">
                          <form>
                          </form>
                          
                      </section>
                      <section class="panel">
                          
                          
                      </section>
                      <section>
                          
                      </section>
                  </aside>
              </div>
<div class="panel-body bio-graph-info">
                              <h1>Job Postings</h1>
                              <div class="row">
                                  
                          </div>



<div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Activity Table
                          </header>
                          <table class="table table-striped table-advance table-hover">
                              <thead>
                              <tr>
                                  <th></th>
                              </tr>
                              </thead>
                              <tbody>
                              <%
                              	ViewJobpostings postings;// = new ViewJobpostings();
                              	postings = new ViewJobpostings();
                              	String uid = (String)session.getAttribute("userid");
                              	postings.setUserid(uid);
                              	Iterator<JobRecord> itr = postings.getPostings();
                              	while(itr.hasNext())
                              	{
                              		JobRecord record = itr.next();
                              		out.print("<tr><td> <a href=\"Job.jsp?jid=" + record.getJobId() + " \">"  + record.getTitle() + " </a>");
                                  	
                                  	out.print("</td></tr>");
                              	}
                              %>
                              </tbody>
                          </table>
                      </section>
                  </div>
              </div>



<!-- js placed at the end of the document so the pages load faster -->
	<script src="js\jquery.js"></script>
	<script src="js\bootstrap.js"></script>
	<script class="include" type="text/javascript" src="js\jquery.dcjqaccordion.2.js"></script>
	<script src="js\jquery.scrollTo.js"></script>
	<script src="js\slidebars.js"></script>
	<script src="js\jquery (1).js" type="text/javascript"></script>
	<script src="js\respond.js"></script>

	<!--common script for all pages-->
	<script src="js\common-scripts.js"></script><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 686px; display: none;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 683px; left: 183px; position: absolute; cursor: default; display: none;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 490px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1536px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 735px; display: none;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 183px; position: absolute; cursor: default; display: none;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0; display: block;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 437px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 859px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 735px; display: none; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 183px; position: absolute; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0; display: none;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 563px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1536px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 735px; display: none;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 183px; position: absolute; cursor: default; display: none;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 563px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1536px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 735px; opacity: 0; display: none;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 183px; position: absolute; cursor: default; opacity: 0; display: none;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 563px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1536px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 735px; display: none; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 183px; position: absolute; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 563px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1536px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 735px; display: none; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 183px; position: absolute; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 563px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1536px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 735px; display: none; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 183px; position: absolute; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 563px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1536px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 735px; opacity: 0; display: none;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 183px; position: absolute; cursor: default; opacity: 0; display: none;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 123px; float: right; width: 6px; height: 403px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 894px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 18.4px; left: 390px; height: 735px; opacity: 0; display: none;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 750.4px; left: 183px; position: absolute; cursor: default; opacity: 0; display: none;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 507px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1536px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 18.4px; left: 390px; height: 735px; display: none; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 750.4px; left: 183px; position: absolute; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 581px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1536px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 18.4px; left: 390px; height: 686px; display: none; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 701.4px; left: 183px; position: absolute; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 508px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1536px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 258px; height: 735px; display: none;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 51px; position: absolute; cursor: default; display: none;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 563px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1072px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 735px; display: none; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 183px; position: absolute; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 563px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1536px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 258px; height: 735px; display: none;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 51px; position: absolute; cursor: default; display: none;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 563px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1072px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 258px; height: 735px; display: none; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 51px; position: absolute; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 563px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1072px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 258px; height: 735px; opacity: 0; display: none;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 51px; position: absolute; cursor: default; opacity: 0; display: none;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 563px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1072px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 735px; display: none; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 183px; position: absolute; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2003" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 563px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2003-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1536px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2000" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 686px; display: none; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2000-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 683px; left: 183px; position: absolute; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2001" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 427px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2001-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: block; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 922px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2000" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 686px; display: none; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2000-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 683px; left: 183px; position: absolute; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2001" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 216px; float: right; width: 6px; height: 415px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2001-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1072px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2000" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 258px; height: 686px; display: none; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2000-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 683px; left: 51px; position: absolute; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div></div><div id="ascrail2001" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 415px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2001-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div style="position: relative; top: 0px; height: 6px; width: 1072px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2000" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 686px; display: none;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2000-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 683px; left: 183px; position: absolute; cursor: default; display: none;"><div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2001" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;"><div style="position: relative; top: 0px; float: right; width: 6px; height: 415px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div><div id="ascrail2001-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; opacity: 0; display: none;"><div style="position: relative; top: 0px; height: 6px; width: 1072px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div></div>
	<div id="ascrail2000" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 686px; opacity: 0; display: none;">
		<div style="position: relative; top: 0px; float: right; width: 3px; height: 20px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 683px; left: 183px; position: absolute; cursor: default; opacity: 0; display: none;">
		<div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;">
		<div style="position: relative; top: 284px; float: right; width: 6px; height: 402px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;">
		<div style="position: relative; top: 0px; height: 6px; width: 1038px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2000" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 240.8px; height: 319px; display: none;">
		<div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 316px; left: 33.8px; position: absolute; cursor: default; display: none;">
		<div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;">
		<div style="position: relative; top: 280px; float: right; width: 6px; height: 406px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;">
		<div style="position: relative; top: 0px; height: 6px; width: 1038px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2000" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 686px; display: none; opacity: 0;">
		<div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 683px; left: 183px; position: absolute; cursor: default; display: none; opacity: 0;">
		<div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;">
		<div style="position: relative; top: 0px; float: right; width: 6px; height: 434px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;">
		<div style="position: relative; top: 0px; height: 6px; width: 1038px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2000" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 735px; display: none;">
		<div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 183px; position: absolute; cursor: default; display: none;">
		<div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;">
		<div style="position: relative; top: 0px; float: right; width: 6px; height: 563px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;">
		<div style="position: relative; top: 0px; height: 6px; width: 1031px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2000" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 390px; height: 735px; display: none; opacity: 0;">
		<div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 183px; position: absolute; cursor: default; display: none; opacity: 0;">
		<div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;">
		<div style="position: relative; top: 0px; float: right; width: 6px; height: 563px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;">
		<div style="position: relative; top: 0px; height: 6px; width: 1031px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2000" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 239.2px; height: 735px; display: none; opacity: 0;">
		<div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 732px; left: 32.2px; position: absolute; cursor: default; display: none; opacity: 0;">
		<div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0; display: none;">
		<div style="position: relative; top: 0px; float: right; width: 6px; height: 982px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; opacity: 0; display: none;">
		<div style="position: relative; top: 0px; height: 6px; width: 480px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2000" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: absolute; top: 0px; left: 381.6px; height: 782px; display: none; opacity: 0;">
		<div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails" style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 779px; left: 174.6px; position: absolute; cursor: default; display: none; opacity: 0;">
		<div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px; left: 0px;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;">
		<div style="position: relative; top: 0px; float: right; width: 6px; height: 541px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;">
		<div style="position: relative; top: 0px; height: 6px; width: 814px; background-color: rgb(232, 64, 63); background-clip: padding-box; border-radius: 10px;"></div>
	</div>
</body>
</html>