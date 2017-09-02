<%-- 
    Document   : trptlookup
    Created on : 28 Aug, 2017, 6:58:37 AM
    Author     : Parth
--%>
<%@page import="java.sql.SQLException"%>
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
<!--Paging Script Test-->
<script type="text/javascript" src="js/paging.js"></script>
<!--paging script test end-->

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
       <section class="title-bar">						
			<div class="w3l_search">
                            <form action="#" method="post">
					<input type="text" name="search" value="Search by Transport Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}" required="">
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
                                    <h2>Transport Enrollment </h2>                                     
				</div>                                
				<div class="agile-tables">                                   
					<div class="w3l-table-info">
                                        <table id="table">
						<thead>
						  <tr>
                                                        <th>Code</th>
							<th>Name</th>							
							<th>Service Location</th>
                                                        <th>Abbreviation</th>                                                        
                                                        <th>Contact Number</th>
                                                        <th>Contact Number 2</th>
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
                                                                out.println("location='userlookup.jsp';");
                                                                out.println("</script>");
                                                            }
                                                            else{
                                                                if(request.getParameter("sb")==null){
                                                                PreparedStatement ptst = connection.prepareStatement("select * from msttransport");
                                                                ResultSet rs = ptst.executeQuery();
                                                                while(rs.next()){
                                                                    String tid= rs.getString("trptID");
                                                                    String tcode = rs.getString("trptCode");
                                                                    String tname = rs.getString("trptName");
                                                                    String location =rs.getString("trptServiceLocation");
                                                                    String abb = rs.getString("trptAbb");                                                                    
                                                                    String cno = rs.getString("trptContactNo1"); 
                                                                    String cno2 =rs.getString("trptContactNo2");
                                                                    String status=rs.getString("isActive");
                                                                    %>
                                                                    <td name="grpcode">
                                                                        <%=tcode%>
                                                                    </td>
                                                                    <td name="gname">
                                                                        <%=tname%>
                                                                    </td>
                                                                    <td name="grptype">
                                                                        <%=location%>
                                                                    </td>
                                                                    <td name="grpstatus">
                                                                        <%=abb%>
                                                                    </td>
                                                                    <td>
                                                                        <%=cno%>
                                                                    </td>
                                                                    <td>
                                                                        <%=cno2%>
                                                                    </td>
                                                                    <td>
                                                                        <%=status%>
                                                                    </td>
                                                                    <td>                            
                                                                    <form action="" method="post">
                                                                    <input type="submit" name="btnactive" class="active fa fa-check text-success text-active" value="✓" title="Update" style="border:none;background: transparent;" formaction="transreg.jsp" formmethod="post" ><br>
                                                                    <input type="submit" name="btndeactive" class="fa fa-times text-danger text" value="x" Title="Deactivate" style="border:none;background: transparent;" formaction="transport" formmethod="post">
                                                                    <input type="hidden" name="dname" value="<%=tid%>">
                                                                    <input type="hidden" name="gname" value="<%=tname%>">
                                                                    </form>
                                                                    </td>  
                                                                    </tr>
                                                                    <%
                                                                }
                                                            }
                                                            else if(request.getParameter("sb")!=null){
                                                                PreparedStatement ptst = connection.prepareStatement("select * from msttransport where trptname like '%"+sv+"%'");
                                                                ResultSet rs = ptst.executeQuery();
                                                                while(rs.next()){
                                                                    String tid= rs.getString("trptID");
                                                                    String tcode = rs.getString("trptCode");
                                                                    String tname = rs.getString("trptName");
                                                                    String location =rs.getString("trptServiceLocation");
                                                                    String abb = rs.getString("trptAbb");                                                                    
                                                                    String cno = rs.getString("trptContactNo1"); 
                                                                    String cno2 =rs.getString("trptContactNo2");
                                                                    String status=rs.getString("isActive");
                                                                    %>
                                                                    <td name="grpcode">
                                                                        <%=tcode%>
                                                                    </td>
                                                                    <td name="gname">
                                                                        <%=tname%>
                                                                    </td>
                                                                    <td name="grptype">
                                                                        <%=location%>
                                                                    </td>
                                                                    <td name="grpstatus">
                                                                        <%=abb%>
                                                                    </td>
                                                                    <td>
                                                                        <%=cno%>
                                                                    </td>
                                                                    <td>
                                                                        <%=cno2%>
                                                                    </td>
                                                                    <td>
                                                                        <%=status%>
                                                                    </td>
                                                                    <td>                            
                                                                    <form action="" method="post">
                                                                    <input type="submit" name="btnactive" class="active fa fa-check text-success text-active" value="✓" title="Update" style="border:none;background: transparent;" formaction="transreg.jsp" formmethod="post" ><br>
                                                                    <input type="submit" name="btndeactive" class="fa fa-times text-danger text" value="x" Title="Deactivate" style="border:none;background: transparent;" formaction="transport" formmethod="post">
                                                                    <input type="hidden" name="dname" value="<%=tid%>">
                                                                    <input type="hidden" name="gname" value="<%=tname%>">
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
                                                                PreparedStatement ptst = connection.prepareStatement("select * from msttransport");
                                                                ResultSet rs = ptst.executeQuery();
                                                                while(rs.next()){
                                                                    String tid= rs.getString("trptID");
                                                                    String tcode = rs.getString("trptCode");
                                                                    String tname = rs.getString("trptName");
                                                                    String location =rs.getString("trptServiceLocation");
                                                                    String abb = rs.getString("trptAbb");                                                                    
                                                                    String cno = rs.getString("trptContactNo1"); 
                                                                    String cno2 =rs.getString("trptContactNo2");
                                                                    String status=rs.getString("isActive");
                                                                    %>
                                                                    <td name="grpcode">
                                                                        <%=tcode%>
                                                                    </td>
                                                                    <td name="gname">
                                                                        <%=tname%>
                                                                    </td>
                                                                    <td name="grptype">
                                                                        <%=location%>
                                                                    </td>
                                                                    <td name="grpstatus">
                                                                        <%=abb%>
                                                                    </td>
                                                                    <td>
                                                                        <%=cno%>
                                                                    </td>
                                                                    <td>
                                                                        <%=cno2%>
                                                                    </td>
                                                                    <td>
                                                                        <%=status%>
                                                                    </td>
                                                                    <td>                            
                                                                    <form action="" method="post">
                                                                    <input type="submit" name="btnactive" class="active fa fa-check text-success text-active" value="✓" title="Update" style="border:none;background: transparent;" formaction="transreg.jsp" formmethod="post" ><br>
                                                                    <input type="submit" name="btndeactive" class="fa fa-times text-danger text" value="x" Title="Deactivate" style="border:none;background: transparent;" formaction="transport" formmethod="post">
                                                                    <input type="hidden" name="dname" value="<%=tid%>">
                                                                    <input type="hidden" name="gname" value="<%=tname%>">
                                                                    </form>
                                                                    </td>  
                                                                    </tr>
                                                                    <%
                                                                        }
                                                            }
                                                        }
                                                    }
                                                        catch(SQLException ex){
                                                            out.println("<script type=\"text/javascript\">");
                                                            out.println("alert('"+ex.getMessage()+"');");
                                                            out.println("location='userlookup.jsp';");
                                                            out.println("</script>");
                                                        }                                                        
                                                      %>
						</tbody>
					  </table>                                                
                                                <div id="pageNavPosition" class="col-sm-7 text-right text-center-xs" style="cursor: pointer;">
                                                    <ul class="pagination pagination-sm m-t-none m-b-none">
                                                        <li><a href=""><i class="fa fa-chevron-left"></i></a></li>
                                                        <li><a>
                                                            <script type="text/javascript">
                                                            var pager = new Pager('table', 5);
                                                            pager.init();
                                                            pager.showPageNav('pager', 'pageNavPosition');
                                                            pager.showPage(1);
                                                            </script>
                                                            </a>
                                                        </li>
                                                        <li><a href=""><i class="fa fa-chevron-right"></i></a></li>
                                                    </ul>
                                                </div>                                                
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