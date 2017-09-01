<%-- 
    Document   : groupreg
    Created on : 3 Aug, 2017, 11:13:50 PM
    Author     : Parth
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.daksham.connection.connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Daksham Finance Solution</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Colored Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/registration.css" rel="stylesheet" type="text/css" media="all" />
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/screenfull.js"></script>
		<script>
		$(function () {
			$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

			if (!screenfull.enabled) {
				return false;
			}

			

			$('#toggle').click(function () {
				screenfull.toggle($('#container')[0]);
			});	
		});
		</script>

</head>
    <body class="dashboard-page">
	<script>
	        var theme = $.cookie('protonTheme') || 'default';
	        $('body').removeClass (function (index, css) {
	            return (css.match (/\btheme-\S+/g) || []).join(' ');
	        });
	        if (theme !== 'default') $('body').addClass(theme);
        </script>
	<nav class="main-menu">
		<ul>
			<li>
				<a href="master.jsp">
					<i class="fa fa-home nav_icon"></i>
					<span class="nav-text">
					Home
					</span>
				</a>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
				<i class="fa fa-cogs" aria-hidden="true"></i>
				<span class="nav-text">
					Settings
				</span>
				<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
					<a class="subnav-text" href="Codereg.jsp">
					Code Register
					</a>
					</li>
					<li>
					<a class="subnav-text" href="groupreg.jsp">
					Group Register
					</a>
					</li>
                                        <li>
					<a class="subnav-text" href="statereg.jsp">
					State Register
					</a>
					</li>
                                        <li>
					<a class="subnav-text" href="cityreg.jsp">
					City Register
					</a>
					</li>
				</ul>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
                                    <i class="fa fa-user nav_icon" style="width:60px;text-align:center;vertical-align:middle;font-size:18px;padding:.7em 0;"></i>
				<span class="nav-text">
				Users
				</span>
				<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
                                    <li>
						<a class="subnav-text" href="Registration.jsp">User Enrollment</a>
					</li>
					<li>
						<a class="subnav-text" href="userlookup.jsp">User Details</a>
					</li>
				</ul>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
					<i class="fa fa-group nav_icon" style="position:relative;display:table-cell;
			width:60px;text-align:center;vertical-align:middle;font-size:18px;padding:.7em 0;"></i>
						<span class="nav-text">Party Setup</span>
					<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
						<a class="subnav-text" href="partyreg.jsp">
							Party Enrollment 
						</a>
					</li>
					<li>
						<a class="subnav-text" href="partylookup.jsp">
							Party Details
						</a>
					</li>					
				</ul>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
					<i class="fa fa-truck nav_icon" style="position:relative;display:table-cell;
			width:60px;text-align:center;vertical-align:middle;font-size:18px;padding:.7em 0;"></i>
					<span class="nav-text">
						Transport Setup
					</span>
                                        <i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
                            <ul>
					<li>
						<a class="subnav-text" href="transreg.jsp">
							Transport Enrollment 
						</a>
					</li>
					<li>
						<a class="subnav-text" href="trptlookup.jsp">
							Transport Details
						</a>
					</li>
				</ul>
			</li>
                        <li class="has-subnav">
				<a href="javascript:;">
					<i class="fa fa-pencil-square-o nav_icon" style="position:relative;display:table-cell;
			width:60px;text-align:center;vertical-align:middle;font-size:18px;padding:.7em 0;"></i>
					<span class="nav-text">
					Items Setup
					</span>
                                        <i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
                             <ul>
					<li>
						<a class="subnav-text" href="item.jsp">
							Items Enrollment 
						</a>
					</li>
					<li>
						<a class="subnav-text" href="itemlookup.jsp">
							Items Details
						</a>
					</li>
				</ul>
			</li>
<!--			<li>
				<a href="tables.html">
					<i class="icon-table nav-icon"></i>
					<span class="nav-text">
					Tables
					</span>
				</a>
			</li>
			<li>
				<a href="maps.html">
					<i class="fa fa-map-marker" aria-hidden="true"></i>
					<span class="nav-text">
					Maps
					</span>
				</a>
			</li>
			<li>
				<a href="error.html">
					<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
					<span class="nav-text">
					Error Page
					</span>
				</a>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
					<i class="fa fa-list-ul" aria-hidden="true"></i>
					<span class="nav-text">Extras</span>
					<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
						<a class="subnav-text" href="faq.html">FAQ</a>
					</li>
					<li>
						<a class="subnav-text" href="blank.html">Blank Page</a>
					</li>
				</ul>
			</li>-->
		</ul>
		<ul class="logout">
			<li>
			<a href="home.html">
			<i class="icon-off nav-icon"></i>
			<span class="nav-text">
			Logout
			</span>
			</a>
			</li>
		</ul>
	</nav>
        <!----------start member-login----------->
		<div class="member-login">
			<!----------star form----------->
                        <form class="login"  action="#" method="post" style="width: 500px;">
	
					<div class="formtitle">Group Register</div>
                                        <% 
                                            String grpid = request.getParameter("dname");
                                            if(grpid!=null){
                                                try{
                                                    Connection connection = com.daksham.connection.connection.setConnection();
                                                    PreparedStatement ptst = connection.prepareStatement("select * from mstgroup where groupID='"+grpid+"'");
                                                    ResultSet rs = ptst.executeQuery();
                                                    if(rs.next()){
//                                                        String grpid = rs.getString("groupID");
                                                        String grpcode =rs.getString("groupCode");
                                                        String grpname= rs.getString("groupName");
                                                        String grptype = rs.getString("groupType");
                                                        String grpstatus = rs.getString("isActive");   
                                                    //}
                                                    %>
                                                    <input type="hidden" name="gid" value="<%=grpid%>">
                                                    <div class="input">
                                                        <input type="text" name="cid" placeholder="Group Code" value="<%= grpcode%>"/> 						
					</div>
					<div class="input">
                                            <input type="text" name="cname"  placeholder="Group Name" value="<%=grpname%>"/>
                                        </div>
                                        <div class="section-country">
                                            <select id="State" name="ckey" onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=0" class="frm-field" required=""> 
                                                <option value="<%=grptype%>"><%=grptype%></option>
                                                <option value="Party Group">Party Group</option>
                                                <option value="Item Group">Item Group</option>
                                                <option value="Transport Group">Transport Group</option>
                                                    </select>
                                        </div>                                        
					<div class="submit">						
                                            <input class="bluebutton submitbotton" name="supdate" type="submit" value="Save" formaction="groupreg" formmethod="post" />
                                            <input class="bluebutton submitbotton" name="back" type="submit" value="Group Lookup" formaction="groupreg" formmethod="post" />
                                            	<div class="clear"> </div>
					</div>
                                                    <%
                                                }
                                        }
                                                catch(Exception ex){
                                                        out.println("<script type=\"text/javascript\">");
                                                        out.println("alert('"+ex.getMessage()+"');");
                                                        out.println("location='groupreg.jsp';");
                                                        out.println("</script>");
//}

                                                }
                                            }
else{
%>
                                        <div class="input">
                                            <input type="text" name="cid" placeholder="Group Code"/> 						
					</div>
					<div class="input">
                                            <input type="text" name="cname"  placeholder="Group Name"/>
                                        </div>
                                        <div class="section-country">
                                            <select id="State" name="ckey" onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=0" class="frm-field" required=""> 
                                                <option value="-1">Select Group Type</option>
                                                <option value="Party Group">Party Group</option>
                                                <option value="Item Group">Item Group</option>
                                                <option value="Transport Group">Transport Group</option>
                                                    </select>
                                        </div>                                        
					<div class="submit">						
                                            <input class="bluebutton submitbotton" name="ssave" type="submit" value="Save" formaction="groupreg" formmethod="post" />
                                            <input class="bluebutton submitbotton" type="reset" value="Reset" />
                                            <input class="bluebutton submitbotton" name="slook" type="submit" value="Group Lookup" formaction="groupreg" formmethod="post" />
						<div class="clear"> </div>
					</div>
<%
}
                                            %>
		
				</form>
				<!----------end form----------->
		</div>
		<!----------end member-login----------->
    </body>
</html>
