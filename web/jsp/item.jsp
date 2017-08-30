<%-- 
    Document   : item
    Created on : 30 Aug, 2017, 8:16:21 PM
    Author     : Parth
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Daksham Finance Solution</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all"/>
<link href="css/registration.css" rel="stylesheet" type="text/css" media="all" />
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
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
						<a class="subnav-text" href="#">
							Items Enrollment 
						</a>
					</li>
					<li>
						<a class="subnav-text" href="#">
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
		<div class="sign_up">
			<!----------star form----------->
                        <form class="sign"  action="transport" method="post">
	
					<div class="formtitle">Item Enrollment</div>
                                        <%
                                            String trptid = request.getParameter("dname");
                                            if(trptid != null){
                                                Connection connection = com.daksham.connection.connection.setConnection();
                                                PreparedStatement ptst = connection.prepareStatement("select * from msttransport inner join mstaddress on msttransport.trptAddressID = mstaddress.address_ID inner join mstcoderegister on mstaddress.addresstypecode = mstcoderegister.recid inner join mstcity on mstcity.citycode = mstaddress.citycode inner join mststate on mststate.statecode = mstaddress.State where trptID='"+trptid+"'");
                                                ResultSet rs = ptst.executeQuery();
                                                if(rs.next()){
                                                    String tid = rs.getString("trptid");
                                                    String tcode = rs.getString("trptCode");
                                                    String tname = rs.getString("trptName");
                                                    String traddid = rs.getString("trptAddressID");
                                                    String location= rs.getString("trptServiceLocation");
                                                    String abb = rs.getString("trptAbb");
                                                    String gstcode = rs.getString("trptGSTCode");
                                                    String cno1 = rs.getString("trptContactNo1");
                                                    String cno2 = rs.getString("trptContactNo2");
                                                    String addtype = rs.getString("mstcoderegister.codevalue");
                                                    String rcid = rs.getString("mstcoderegister.recid");
                                                    String add1=rs.getString("mstaddress.addressline1");
                                                    String add2 = rs.getString("mstaddress.addressline2");
                                                    String add3 = rs.getString("mstaddress.addressline3");
                                                    String add4 = rs.getString("mstaddress.addressline4");
                                                    String landmark = rs.getString("mstaddress.landmark");
                                                    String pincode = rs.getString("mstaddress.pincode");
                                                    String citycode = rs.getString("mstaddress.citycode");
                                                    String city = rs.getString("mstcity.cityName");
                                                    String statecode = rs.getString("mstaddress.state");
                                                    String state = rs.getString("mststate.StateName");
                                                    String country = rs.getString("mstaddress.country");
                                                    %>
<div class="input">
    <input type="hidden" value="<%=tid%>" name="trptid"/>
    <input type="hidden" value="<%=traddid%>" name="trptaddid"/>
    <input type="text" name="tid" placeholder="Transport Code" readonly="" value="<%=tcode%>"  required/> 
					</div>
					<div class="input">
                                            <input type="text" name="tname" value="<%=tname%>" placeholder="Transport Name" required/>
                                        </div>
                                        <!----------start Address section----------->
                                        <div class="section-country">
                                            <select id="addtype" name="addtype" disabled="" onmousemove="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=0" class="frm-field" required="">
                                                <option value="<%=rcid%>"><%=addtype%></option>
                                                <% 
                                                    Connection connect = com.daksham.connection.connection.setConnection();
                                                PreparedStatement ptsta = connect.prepareStatement("select * from mstcoderegister where codename like '%Address%'");
                                                ResultSet rsa = ptsta.executeQuery();
                                                while(rs.next()){
                                                    out.println("<option value="+"\""+rs.getString("recid")+"\""+">"+rs.getString("codevalue")+"</option>");
                                                }
                                                    %>
                                            </select>
                                        </div>
					<div class="section">
						<div class="input-sign details">
                                                    <input type="text" name="add1" value="<%=add1%>" placeholder="Address Line 1" required maxlength="45"/> 
						</div>
						<div class="input-sign details1">
                                                    <input type="text" name="add2" value="<%=add2%>" placeholder="Address Line 2" maxlength="45"/>
						</div>
						<div class="clear"> </div>
					</div>                                        
					<div class="section">
						<div class="input-sign details">
                                                    <input type="text" name="add3" value="<%=add3%>"  placeholder="Address Line 3"/> 
						</div>
						<div class="input-sign details1">
                                                    <input type="text" name="add4" value="<%=add4%>"  placeholder="Address Line 4" /> 
						</div>
                                           
                                            </div>
                                        										

                                        <div class="section">
                                            <div class="input-sign details">
                                                <input type="text" value="<%=landmark%>" name="landmark" placeholder="Landmark"/> 
						</div>
                                            <div class="input-sign details1">
                                                <input type="text" name="pincode" value="<%=pincode%>"  placeholder="Pincode"/>                                                        
						</div>              
                                        </div>
                                        <div class="section-country">
                                            <select id="State" name="location" onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=0" class="frm-field" required=""> 
                                                <option value="<%=location%>"><%=location%></option>
                                                <option value="All India Permit">All India Permit</option>
                                                <option value="Inter City">Inter City</option>
                                                <option value="Domestic">Domestic</option>
                                                <option value="Local">Local</option>
                                                    </select>
                                        </div>
                                        <div class="input">
                                            <input type="text" value="<%=abb%>" name="tabb"  placeholder="Transport Abbreviation"/>
                                        </div>  
                                        <div class="input">
                                            <input type="text" name="tgst" value="<%=gstcode%>"  placeholder="GSTCODE" />
                                        </div> 
                                        <div class="section">
                                            <div class="input-sign details">
                                                <input type="text" name="cno1" value="<%=cno1%>" placeholder="Mobile" required/> 
						</div>
                                            <div class="input-sign details1">
                                                <input type="text" name="cno2" value="<%=cno2%>"  placeholder="Contact Number" />                                                        
						</div>   
                                            <div class="clear"> </div>
                                        </div>                                        
					<div class="submit">						
                                            <input class="bluebutton submitbotton" name="usave" type="submit" value="Save" />
                                            <input class="bluebutton submitbotton" name="slook" type="submit" value="Transport Lookup" />
						<div class="clear"> </div>
					</div>
                                                    
                                                    <%
                                                }
                                                
                                            }
else{
%>

					<div class="input">
						<input type="text" name="tid" placeholder="Item Code"  required/> 
					</div>
					<div class="input">
                                            <input type="text" name="tname"  placeholder="Item Name" required/>
                                        </div>					
                                        <div class="section-country">
                                            <select id="State" name="itype" onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=0" class="frm-field" required=""> 
                                                <option value="-1">Select Item Type</option>
                                                <option value="RAW Item">RAW Item</option>
                                                <option value="Finished Item">Finished Item</option>
                                                    </select>
                                        </div>
<div class="section">
                                        <div class="input-sign details">
                                            <input type="text" name="irate"  placeholder="Rate / Unit"/>
                                        </div>  
                                        <div class="input-sign details1">
                                            <input type="text" name="iunit"  placeholder="Unit / KG" />
                                        </div> 
    </div>
                                        <div class="section">
                                            <div class="input-sign details">
                                                <input type="text" name="iratekg" placeholder="Rate / KG " required/> 
						</div>
                                            <div class="input-sign details1">
                                                <input type="text" name="igst"  placeholder="GST Percentage" />                                                        
						</div>   
                                        </div>
                                            <div class="section-country">
                                            <select  name="igtype" onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=0" class="frm-field" required=""> 
                                                <option value="-1">Select Group</option>
                                                <%
                                                    Connection connection= com.daksham.connection.connection.setConnection();
                                                    PreparedStatement ptst = connection.prepareStatement("select * from mstgroup where isActive = 'Y' and groupType ='Item Group'");
                                                    ResultSet rs = ptst.executeQuery();
                                                    while (rs.next()){
                                                         out.println("<option value="+"\""+rs.getString("groupId")+"\""+">"+rs.getString("GroupName")+"</option>");
                                                    }
                                                    %>
                                                    </select>
                                        </div>
                                            
                                            <div class="clear"> </div>
                                        </div>                                        
					<div class="submit">						
                                            <input class="bluebutton submitbotton" name="ssave" type="submit" value="Save" />
                                            <input class="bluebutton submitbotton" type="reset" value="Reset" />
<!--                                            <input class="bluebutton submitbotton" name="slook" type="submit" value="Transport Lookup" />-->
						<div class="clear"> </div>
					</div>
		
				</form>
                                                 <%
                                            }
                                            %>
				<!----------end form----------->
		</div>
		<!----------end member-login----------->
    </body>
</html>
