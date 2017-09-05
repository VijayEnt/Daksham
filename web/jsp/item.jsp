<%-- 
    Document   : item
    Created on : 30 Aug, 2017, 8:16:21 PM
    Author     : Parth
--%>

<%@page import="java.sql.Statement"%>
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
                                function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}
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
                        <li>
				<a href="#">
					<i class="icon-table nav-icon"></i>
					<span class="nav-text">
					Menu Enrollment
					</span>
				</a>
			</li>
                        <li class="has-subnav">
				<a href="javascript:;">
					<i class="fa fa-mail-forward" style="position:relative;display:table-cell;
			width:60px;text-align:center;vertical-align:middle;font-size:18px;padding:.7em 0;"></i>
					<span class="nav-text">
					Mappings
					</span>
                                        <i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
                             <ul>
					<li>
						<a class="subnav-text" href="#">
							Party Group Mapping 
						</a>
					</li>
					<li>
						<a class="subnav-text" href="#">
							User Roles
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
                        <form class="sign"  action="item" method="post">	
					<div class="formtitle">Item Enrollment</div>
                                        <%
                                            String itid = request.getParameter("dname");
                                            if(itid != null){
                                                Connection connection = com.daksham.connection.connection.setConnection();
                                                PreparedStatement ptst = connection.prepareStatement("select * from mstitem mi inner join rel_itemgroup rig on mi.itemID = rig.Itemid inner join mstgroup mg on rig.groupID=mg.groupID where mi.itemID ='"+itid+"'");
                                                ResultSet rs = ptst.executeQuery();
                                                if(!rs.isBeforeFirst()){
                                                    PreparedStatement ptst1 = connection.prepareStatement("select * from mstitem mi where mi.itemID ='"+itid+"'");
                                                    ResultSet rs1 = ptst1.executeQuery();
                                                    if(rs1.next()){
                                                    String tid = rs1.getString("mi.itemid");
                                                    String itcode = rs1.getString("mi.itemCode");
                                                    String itname = rs1.getString("mi.itemName");
                                                    String itemtype = rs1.getString("mi.itemType");
                                                    String itemrate = rs1.getString("mi.itemRatePerUnit");
                                                    String itemQtyperKG = rs1.getString("mi.itemQntyPerKG");
                                                    String igst = rs1.getString("mi.gstPercent");
                                                    String rate = rs1.getString("mi.itemrateperKG");
                                                    //String igid = rs1.getString("rig.groupId");
                                                    //String igname = rs1.getString("mg.GroupName");
%>
                                        <div class="input">
                                                        <input type="text" name="tid" value="<%=itcode%>" placeholder="Item Code"  required readonly=""/>
                                                        <input type="hidden" value="<%=tid%>" name="trptid"/>
					</div>
					<div class="input">
                                            <input type="text" name="tname" value="<%=itname%>" placeholder="Item Name" required/>
                                        </div>					
                                        <div class="section-country">
                                            <select id="State" name="itype"  onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=0"
                                                    class="frm-field" required="required"> 
                                                <option value="<%=itemtype%>"><%=itemtype%></option>
                                                <option value="RAW Item">RAW Item</option>
                                                <option value="Finished Item">Finished Item</option>
                                                    </select>
                                        </div>
                                        <div class="section">
                                            <div class="input-sign details">
                                                <input type="text" name="irate"  value="<%=itemrate%>" onkeypress="return isNumberKey(event)" placeholder="Rate / Unit"/>
                                        </div>                                              
                                            <div class="input-sign details" >                                              
                                                <input type="text" name="iunit" value="<%=itemQtyperKG%>" onkeypress="return isNumberKey(event)"  placeholder="Unit / KG" />
                                        </div> 
                                        </div>
                                        <div class="section">                                            
                                            <div class="input-sign details1">
                                                <input type="text" name="igst" value="<%=igst%>" placeholder="GST Percentage" onkeypress="return isNumberKey(event)" required="" />                                                        
						</div>   
                                            <div class="input-sign details1">
                                                <input type="text" name="iratekg" value="<%=rate%>" onkeypress="return isNumberKey(event)" placeholder="Rate / KG " required/> 
						</div>
                                        </div>
                                                    <div class="section-country">
                                                <select name="igtype"  multiple="multiple" size="5" onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=5" class="frm-field"> 
                                                    <option value="-1"  selected=""><b>Select Group</b></option>
                                                <%                                                    
                                                    PreparedStatement ptstg = connection.prepareStatement("select * from mstgroup where isActive = 'Y' and groupType ='Item Group'");
                                                    ResultSet rsg = ptstg.executeQuery();
                                                    while (rsg.next()){
                                                         out.println("<option value="+"\""+rsg.getString("groupId")+"\""+">"+rsg.getString("GroupName")+"</option>");
                                                    }
                                                    %>
                                                    </select>
                                                    <div class="clear"> </div>
                                                    </div>
<!--                                            <div class="section-country">
                                                <select name="igtyped" disabled="" multiple="multiple" size="5" onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=5" class="frm-field"> 
                                                    <option value="-1"  selected=""><b>Select Group</b></option>
                                                <%  
                                                    while (rsg.next()){
                                                         out.println("<option value="+"\""+rs.getString("rig.groupId")+"\""+">"+rs.getString("mg.GroupName")+"</option>");
                                                    }
                                                    %>
                                                    </select>
                                            <div class="clear"> </div>                                        
                                            </div>-->
					<div class="submit">						
                                            <input class="bluebutton submitbotton" name="usave" type="submit" value="Save" />
                                            <input class="bluebutton submitbotton" name="slook" type="submit" value="Item Lookup" />
						<div class="clear"> </div>
					</div>      
<%
    }
                                                }
                                                else{
                                                    if(rs.next()){
                                                    String tid = rs.getString("mi.itemid");
                                                    String itcode = rs.getString("mi.itemCode");
                                                    String itname = rs.getString("mi.itemName");
                                                    String itemtype = rs.getString("mi.itemType");
                                                    String itemrate = rs.getString("mi.itemRatePerUnit");
                                                    String itemQtyperKG = rs.getString("mi.itemQntyPerKG");
                                                    String igst = rs.getString("mi.gstPercent");
                                                    String rate = rs.getString("mi.itemrateperKG");                                                    
                                                    %>
                                                    <div class="input">
                                                        <input type="text" name="tid" value="<%=itcode%>" placeholder="Item Code"  required readonly=""/>
                                                        <input type="hidden" value="<%=tid%>" name="trptid"/>
					</div>
					<div class="input">
                                            <input type="text" name="tname" value="<%=itname%>" placeholder="Item Name" required/>
                                        </div>					
                                        <div class="section-country">
                                            <select id="State" name="itype"  onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=0"
                                                    class="frm-field" required="required"> 
                                                <option value="<%=itemtype%>"><%=itemtype%></option>
                                                <option value="RAW Item">RAW Item</option>
                                                <option value="Finished Item">Finished Item</option>
                                                    </select>
                                        </div>
                                        <div class="section">
                                            <div class="input-sign details">
                                                <input type="text" name="irate"  value="<%=itemrate%>" onkeypress="return isNumberKey(event)" placeholder="Rate / Unit"/>
                                        </div>                                              
                                            <div class="input-sign details" >                                              
                                                <input type="text" name="iunit" value="<%=itemQtyperKG%>" onkeypress="return isNumberKey(event)"  placeholder="Unit / KG" />
                                        </div> 
                                        </div>
                                        <div class="section">                                            
                                            <div class="input-sign details1">
                                                <input type="text" name="igst" value="<%=igst%>" placeholder="GST Percentage" onkeypress="return isNumberKey(event)" required="" />                                                        
						</div>   
                                            <div class="input-sign details1">
                                                <input type="text" name="iratekg" value="<%=rate%>" onkeypress="return isNumberKey(event)" placeholder="Rate / KG " required/> 
						</div>
                                        </div>
                                                    <div class="section-country">
                                                <select name="igtype"  multiple="multiple" size="5" onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=5" class="frm-field"> 
                                                    <option value="-1"  selected=""><b>Select Group</b></option>
                                                <%                                                    
                                                    PreparedStatement ptstg = connection.prepareStatement("select * from mstgroup where isActive = 'Y' and groupType ='Item Group'");
                                                    ResultSet rsg = ptstg.executeQuery();
                                                    while (rsg.next()){
                                                         out.println("<option value="+"\""+rsg.getString("groupId")+"\""+">"+rsg.getString("GroupName")+"</option>");
                                                    }
                                                    %>
                                                    </select>
                                                    <div class="clear"> </div>
                                                    </div>
                                            <div class="section-country">
                                                <select name="igtyped" multiple="multiple" size="5" onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=5" class="frm-field"> 
                                                    <!--<option value="-1"  selected=""><b>Select Group</b></option>-->                                                    
                                                    <%
                                                        PreparedStatement ptst1 = connection.prepareStatement("select * from mstitem mi inner join rel_itemgroup rig on mi.itemID = rig.Itemid inner join mstgroup mg on rig.groupID=mg.groupID where mi.itemID ='"+itid+"'");
                                                        ResultSet rs1 = ptst1.executeQuery();
//                                                        String igid = rs1.getString("rig.groupId");
//                                                        String igname = rs1.getString("mg.GroupName");
                                                        while(rs1.next()){
                                                            out.println("<option value="+"\""+rs1.getString("rig.groupId")+"\""+">"+rs1.getString("mg.GroupName")+"</option>");
                                                            %>
                                                            
                                                       <% }
                                                        %>                                                    
                                                    </select>
                                            <div class="clear"> </div>                                        
                                            </div>
					<div class="submit">						
                                            <input class="bluebutton submitbotton" name="usave" type="submit" value="Save" />
                                            <input class="bluebutton submitbotton" name="slook" type="submit" value="Item Lookup" />
						<div class="clear"> </div>
					</div>                                                                                            
                                                <!--</div>-->                                        
                                                    <%
                                                }                                                
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
                                            <select id="State" name="itype"  onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=0"
                                                    class="frm-field" required="required"> 
                                                <option value="">Select Item Type</option>
                                                <option value="RAW Item">RAW Item</option>
                                                <option value="Finished Item">Finished Item</option>
                                                    </select>
                                        </div>
                                        <div class="section">
                                            <div class="input-sign details">
                                            <input type="text" name="irate"  onkeypress="return isNumberKey(event)" placeholder="Rate / Unit"/>
                                        </div>                                              
                                            <div class="input-sign details" >                                              
                                            <input type="text" name="iunit" onkeypress="return isNumberKey(event)"  placeholder="Unit / KG" />
                                        </div> 
                                        </div>
                                        <div class="section">                                            
                                            <div class="input-sign details1">
                                                <input type="text" name="igst"  placeholder="GST Percentage" onkeypress="return isNumberKey(event)" required="" />                                                        
						</div>   
                                            <div class="input-sign details1">
                                                <input type="text" name="iratekg" onkeypress="return isNumberKey(event)" placeholder="Rate / KG " required/> 
						</div>
                                        </div>
                                            <div class="section-country">
                                                <select name="igtype"  multiple="multiple" size="5" onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=5" class="frm-field"> 
                                                    <option value="-1"  selected=""><b>Select Group</b></option>
                                                <%
                                                    Connection connection= com.daksham.connection.connection.setConnection();
                                                    PreparedStatement ptst = connection.prepareStatement("select * from mstgroup where isActive = 'Y' and groupType ='Item Group'");
                                                    ResultSet rs = ptst.executeQuery();
                                                    while (rs.next()){
                                                         out.println("<option value="+"\""+rs.getString("groupId")+"\""+">"+rs.getString("GroupName")+"</option>");
                                                    }
                                                    %>
                                                    </select>
                                                    <div class="clear"> </div>
                                        </div>
                                            <div class="submit">						
                                            <input class="bluebutton submitbotton" name="ssave" type="submit" value="Save" />
                                            <input class="bluebutton submitbotton" type="reset" value="Reset" />
                                            <div class="clear"> </div>
                                            </div>
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
