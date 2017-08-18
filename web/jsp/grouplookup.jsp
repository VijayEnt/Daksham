<%-- 
    Document   : grouplook
    Created on : 17 Aug, 2017, 5:30:15 PM
    Author     : ParthBheda
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Daksham Finance Solution</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!--<link href="css/registration.css" rel="stylesheet" type="text/css" media="all" />-->
<!--<link href="css/lookup.css" rel="stylesheet" type="text/css">-->
<!--<link href="css/style-responsive.css" rel="stylesheet">-->
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
                <!-- tables -->
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />
<script type="text/javascript" src="js/jquery.basictable.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
      $('#table').basictable();

      $('#table-breakpoint').basictable({
        breakpoint: 768
      });

      $('#table-swap-axis').basictable({
        swapAxis: true
      });

      $('#table-force-off').basictable({
        forceResponsive: false
      });

      $('#table-no-resize').basictable({
        noResize: true
      });

      $('#table-two-axis').basictable();

      $('#table-max-height').basictable({
        tableWrapper: true
      });
    });
</script>
<!-- //tables -->

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
						<a class="subnav-text" href="#">User Details</a>
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
						<a class="subnav-text" href="#">
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
							Tarnsport Enrollment 
						</a>
					</li>
					<li>
						<a class="subnav-text" href="#">
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
       <section class="title-bar">						
			<div class="w3l_search">
                            <form action="#" method="post">
					<input type="text" name="search" value="Search by Group Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}" required="">
                                        <button class="btn btn-default" name="sb" type="submit" title="Search Code"><i class="fa fa-search" aria-hidden="true"></i></button> <br><br>
                                        <button class="btn btn-default" name="refresh" type="submit" style="margin-left: 50px;" title="Refresh Data"><i class="fa fa-refresh" aria-hidden="true"></i></button>                              
				</form>            
			</div>			
			<div class="clearfix"> </div>
		</section>
        <div class="main-grid" style="margin-left: 20px;">
			<div class="agile-grids">	
				<!-- tables -->				
				<div class="table-heading">
                                    <h2>Group Enrollment </h2>                                     
				</div>                                
				<div class="agile-tables">                                   
					<div class="w3l-table-info">
                                        <table id="table">
						<thead>
						  <tr>
                                                        <th>Group Code</th>
							<th>Group Name</th>							
							<th>Group Type</th>
							<th>Status</th>
<!--							<th>Sequence Order</th>-->
							<th>Action</th>
						  </tr>
						</thead>
						<tbody>
						  <tr>
                                                      <% 
                                                        try{
                                                            String sv= request.getParameter("search");
                                                            Connection connection = com.daksham.connection.connection.setConnection();
                                                            if(connection==null){
                                                                out.println("<script type=\"text/javascript\">");            
                                                                out.println("alert('Please Check Database Connection!');");
                                                                out.println("location='grouplookup.jsp';");
                                                                out.println("</script>");
                                                            }
                                                            else{
                                                                if(request.getParameter("sb")==null){
                                                                PreparedStatement ptst = connection.prepareStatement("select `groupID`, `groupCode`, `groupName`, `groupType`, `isActive` from mstgroup;");
                                                                ResultSet rs = ptst.executeQuery();
                                                                while(rs.next()){
                                                                    String grpid = rs.getString("groupID");
                                                                    String grpcode =rs.getString("groupCode");
                                                                    String grpname= rs.getString("groupName");
                                                                    String grptype = rs.getString("groupType");
                                                                    String grpstatus = rs.getString("isActive");                                                                    
                                                                    %>
                                                                    <td name="grpcode">
                                                                        <%=grpcode%>
                                                                    </td>
                                                                    <td name="gname">
                                                                        <%=grpname%>
                                                                    </td>
                                                                    <td name="grptype">
                                                                        <%=grptype%>
                                                                    </td>
                                                                    <td name="grpstatus">
                                                                        <%=grpstatus%>
                                                                    </td>                                                                    
                                                                    <td>                            
                                                                    <form action="" method="post">
                                                                        <input type="submit" name="btnactive" class="active fa fa-check text-success text-active" value="✓" title="Update code" style="border:none;background: transparent;" formaction="groupreg.jsp" formmethod="post" ><br>
                                                                    <input type="submit" name="btndeactive" class="fa fa-times text-danger text" value="x" Title="Deactivate Doctor" style="border:none;background: transparent;" formaction="groupreg" formmethod="post">
                                                                    <input type="hidden" name="dname" value="<%=grpid%>">
                                                                    <input type="hidden" name="gname" value="<%=grpname%>">
                                                                    </form>
                                                                    </td>  
                                                                    </tr>
                                                                    <%
                                                                }
                                                            }
                                                            else if(request.getParameter("sb")!=null){
                                                                PreparedStatement ptst = connection.prepareStatement("select `groupID`, `groupCode`, `groupName`, `groupType`, `isActive` from mstgroup where groupName like '%"+sv+"%';");
                                                                ResultSet rs = ptst.executeQuery();
                                                                while(rs.next()){
                                                                    String grpid = rs.getString("groupID");
                                                                    String grpcode =rs.getString("groupCode");
                                                                    String grpname= rs.getString("groupName");
                                                                    String grptype = rs.getString("groupType");
                                                                    String grpstatus = rs.getString("isActive");
                                                                %>
                                                                <tr>
                                                                <td name="grpcode">
                                                                        <%=grpcode%>
                                                                    </td>
                                                                    <td name="gname">
                                                                        <%=grpname%>
                                                                    </td>
                                                                    <td name="grptype">
                                                                        <%=grptype%>
                                                                    </td>
                                                                    <td name="grpstatus">
                                                                        <%=grpstatus%>
                                                                    </td>                                                                    
                                                                    <td>                            
                                                                    <form action="" method="post">
                                                                    <input type="submit" name="btnactive" class="active fa fa-check text-success text-active" value="✓" title="Update code" style="border:none;background: transparent;" ><br>
                                                                    <input type="submit" name="btndeactive" class="fa fa-times text-danger text" value="x" Title="Deactivate Doctor" style="border:none;background: transparent;" formaction="" formmethod="post">
                                                                    <input type="hidden" name="dname" value="<%=grpid%>">
                                                                    </form>
                                                                    </td>  
                                                                    </tr>
                                                                    <%
                                                                        }
//                                                                        else{
//                                                                                out.println("<script type=\"text/javascript\">");
//                                                                                out.println("alert('Code with "+sv+" not found please try again!');");
//                                                                                out.println("location='codelookup.jsp';");
//                                                                                out.println("</script>");
//                                                                                }                                                            
                                                            }
                                                                else if(request.getParameter("refresh")!=null){
                                                                PreparedStatement ptst = connection.prepareStatement("select `groupID`, `groupCode`, `groupName`, `groupType`, `isActive` from mstgroup;");
                                                                ResultSet rs = ptst.executeQuery();
                                                                while(rs.next()){
                                                                    String grpid = rs.getString("groupID");
                                                                    String grpcode =rs.getString("groupCode");
                                                                    String grpname= rs.getString("groupName");
                                                                    String grptype = rs.getString("groupType");
                                                                    String grpstatus = rs.getString("isActive");
                                                                    %>
                                                                    <tr>
                                                                <td name="grpcode">
                                                                        <%=grpcode%>
                                                                    </td>
                                                                    <td name="gname">
                                                                        <%=grpname%>
                                                                    </td>
                                                                    <td name="grptype">
                                                                        <%=grptype%>
                                                                    </td>
                                                                    <td name="grpstatus">
                                                                        <%=grpstatus%>
                                                                    </td>                                                                    
                                                                    <td>                            
                                                                    <form action="" method="post">
                                                                    <input type="submit" name="btnactive" class="active fa fa-check text-success text-active" value="✓" title="Update code" style="border:none;background: transparent;" ><br>
                                                                    <input type="submit" name="btndeactive" class="fa fa-times text-danger text" value="x" Title="Deactivate Doctor" style="border:none;background: transparent;" formaction="" formmethod="post">
                                                                    <input type="hidden" name="dname" value="<%=grpid%>">                                                                    
                                                                    </form>
                                                                    </td>  
                                                                    </tr>
                                                                    <%
                                                                        }
                                                            }
                                                        }
                                                    }
                                                        catch(Exception ex){
                                                            out.println("<script type=\"text/javascript\">");
                                                            out.println("alert('"+ex.getMessage()+"');");
                                                            out.println("location='doctorv.jsp';");
                                                            out.println("</script>");
                                                        }
                                                      %>
						</tbody>
					  </table>
					</div>				  
				</div>
				<!-- //tables -->
			</div>
		</div>		
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
</body>
</html>