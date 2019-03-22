<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="daten.Schuh, java.util.ArrayList, db.DAO" %>

<!DOCTYPE html>
<html>
<head>
<title>Black Box</title>
<!--/tags -->

<%
	session.setAttribute("schuhe", null);	
	Object o = session.getAttribute("schuhe");
	ArrayList<Schuh> list = null;
	if (o == null)
	{
		DAO dao = new DAO();
		list = dao.selectTable1();
		session.setAttribute("schuhe", list);	
	}
	else{
		list = (ArrayList<Schuh>) o;
	}
%>


<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Elite Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--//tags -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> 

<!-- //for bootstrap working -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
</head>
<body>
<!-- header -->
<div class="header" id="home">
	<div class="container">
		<ul>
		    <li> <a href="Login.jsp" data-toggle="modal" data-target="#myModal"><i class="fa fa-unlock-alt" aria-hidden="true"></i> Sign In </a></li>
			<li> <a href="ShoppingBag.jsp" data-toggle="modal" data-target="#myModal2"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Shopping Bag </a></li>
		</ul>
	</div>
</div>
<!-- //header -->
<!-- header-bot -->
<div class="header-bot">
	<div class="header-bot_inner_wthreeinfo_header_mid">
		<div class="col-md-4 header-middle">
			<form action="SearchServ" method="post">
					<input type="search" name="search" placeholder="Search here..." required>
					<input type="hidden" name="list" value=<%=session.getAttribute("schuhe")%>>
					<input type="submit" value="Search">
				<div class="clearfix"></div>
			</form>
		</div>
		<!-- header-bot -->
			<div class="col-md-4 logo_agile">
				<h1><a href="index.html"><span>Black</span>Box <i class="fa fa-shopping-bag top_logo_agile_bag" aria-hidden="true"></i></a></h1>
			</div>

		<div class="clearfix"></div>
	</div>
</div>
<!-- //header-bot -->
<!-- banner -->
<div class="ban-top">
	<div class="container">
		<div class="top_nav_left">
			<nav class="navbar navbar-default">
			  <div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav menu__list">
					<li class="active menu__item menu__item--current"><a class="menu__link" href="index.html">Home <span class="sr-only">(current)</span></a></li>
					<li class=" menu__item"><a class="menu__link" href="AboutUs.jsp">About</a></li>
					<li class=" menu__item"><a class="menu__link" href="Schuhe.jsp">Sneakers</a></li>
					<li class=" menu__item"><a class="menu__link" href="Kleider.jsp">Clothes</a></li>

				  </ul>
				</div>
			  </div>
			</nav>	
		</div>
		<div class="clearfix"></div>
	</div>
</div>

<!-- inhalt -->


<div class="aussen">
<%
Object ob = request.getAttribute("listSearch");
ArrayList<Schuh> listSearch = (ArrayList<Schuh>) ob;
if(request.getAttribute("listSearch") == null){
for(int i = 0; i < 36; i++){
%>
	<% out.println("\n");%>
<div class="gallery">
  <a target="_blank" href="img_5terre.jpg">
    <img src=<%=list.get(i).getBild()%> alt=<%=list.get(i).getBild()%> width="600" height="400">
  </a>
  <div class="col-sm-6 newsright">
  <form action="ShoppingBag.jsp" method="post">
  <div class="desc"><%out.println(list.get(i).getName() +" CHF"+ list.get(i).getPrice() +".- " +list.get(i).getBrand());%></div>
  <input type="hidden" name="name" value="<%=list.get(i).getName()%>"/>
  <input type="hidden" name="preis" value="<%=list.get(i).getPrice()%>"/>
  <input type="hidden" name="bild" value="<%=list.get(i).getBild()%>"/>
  <input type="hidden" name="brand" value="<%=list.get(i).getBrand()%>"/>
  <input type="submit" value="Warenkorb">
  </form>
</div>
</div>
<%}} else {for(int i = 0; i < listSearch.size(); i++){%>
<% out.println("\n");%>

<div class="gallery">
  <a target="_blank" href="img_5terre.jpg">
    <img src=<%=listSearch.get(i).getBild()%> alt=<%=listSearch.get(i).getBild()%> width="600" height="400">
  </a>
  <div class="col-sm-6 newsright">
  <form action="ShoppingBag.jsp" method="post">
  <div class="desc"><%out.println(listSearch.get(i).getName() +" CHF"+ listSearch.get(i).getPrice() +".- " +listSearch.get(i).getBrand());%></div>
  <input type="hidden" name="name" value="<%=listSearch.get(i).getName()%>"/>
  <input type="hidden" name="preis" value="<%=listSearch.get(i).getPrice()%>"/>
  <input type="hidden" name="bild" value="<%=listSearch.get(i).getBild()%>"/>
  <input type="hidden" name="brand" value="<%=listSearch.get(i).getBrand()%>"/>
  <input type="submit" value="Warenkorb">
  </form>
</div>
</div>
<%}} %>

<!-- //inhalt -->
<!-- footer -->
<div class="footer">
	<div class="footer_agile_inner_info_w3l">

		<div class="col-md-9 footer-right">
			<div class="sign-grds">

			</div>
		</div>
		<div class="clearfix"></div>
			<div class="agile_newsletter_footer">
					<div class="col-sm-6 newsleft">
				<h3>SIGN UP FOR NEWSLETTER !</h3>
			</div>
			<div class="col-sm-6 newsright">
				<form action="#" method="post">
					<input type="email" placeholder="Enter your email..." name="email" required>
					<input type="submit" value="Submit">
				</form>
			</div>

		<div class="clearfix"></div>
		</div>
	</div>
</div>
</div>
<!-- //footer -->



</body>
</html>
