<%-- 
    Document   : transreg
    Created on : 5 Aug, 2017, 11:28:31 PM
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
						<a class="subnav-text" href="partygrp.jsp">
							Party Group Mapping 
						</a>
					</li>
                                        <li>
                                            <a class="subnav-text" href="trptgrp.jsp">
                                                Transport Group Mapping
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
                        <form class="sign"  action="transport" method="post">
	
					<div class="formtitle">Transport Enrollment</div>
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
                                            <!----------start city section----------->
					<div class="section">
						<div class=" section-country">
							<!--<input type="text"  placeholder="City" required/>--> 
                                                        <select id="city" name="city" onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=0" class="frm-field required">
                                                            <option value="<%=citycode%>"><%=city%> </option>
                                                            <%
                                                                PreparedStatement ptstc = connect.prepareStatement("select * from mstcity where isActive='Y'");
                                                                ResultSet rsc = ptstc.executeQuery();
                                                                while(rsc.next()){
                                                                    out.println("<option value="+"\""+rsc.getString("citycode")+"\""+">"+rsc.getString("cityName")+"</option>");
                                                                }
                                                                %>
                                                            </select>
						</div>                                            
						<div class="clear"> </div>
					</div>
					
<!--                                        Start State Section-->
                                        <div class="section-country">
                                            <select id="State" name="state" onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=0" class="frm-field required">
                                                <option value="<%=statecode%>"><%=state%></option>
                                                <%
                                                  PreparedStatement ptsts=connect.prepareStatement("select * from  mststate where isActive='Y'");
                                                  ResultSet rss =ptsts.executeQuery();
                                                  while(rss.next()){
                                                      out.println("<option value="+"\""+rss.getString("statecode")+"\""+">"+rss.getString("stateName")+"</option>");
                                                  }
                                                 %>
                                            </select> 
                                        </div>
										
					<!----------start country section----------->
					<div class="section-country">
                                            <select id="country" name="country" onmousedown="if(this.options.length>5){this.size=10;}" onchange="change_country(this.value)" onblur="this.size=0" class="frm-field required">
		            <option value="<%=country%>"> <%=country%></option>         
		            <option value="AX">Åland Islands</option>
		            <option value="AF">Afghanistan</option>
		            <option value="AL">Albania</option>
		            <option value="DZ">Algeria</option>
		            <option value="AS">American Samoa</option>
		            <option value="AD">Andorra</option>
		            <option value="AO">Angola</option>
		            <option value="AI">Anguilla</option>
		            <option value="AQ">Antarctica</option>
		            <option value="AG">Antigua And Barbuda</option>
		            <option value="AR">Argentina</option>
		            <option value="AM">Armenia</option>
		            <option value="AW">Aruba</option>
		            <option value="AU">Australia</option>
		            <option value="AT">Austria</option>
		            <option value="AZ">Azerbaijan</option>
		            <option value="BS">Bahamas</option>
		            <option value="BH">Bahrain</option>
		            <option value="BD">Bangladesh</option>
		            <option value="BB">Barbados</option>
		            <option value="BY">Belarus</option>
		            <option value="BE">Belgium</option>
		            <option value="BZ">Belize</option>
		            <option value="BJ">Benin</option>
		            <option value="BM">Bermuda</option>
		            <option value="BT">Bhutan</option>
		            <option value="BO">Bolivia</option>
		            <option value="BA">Bosnia and Herzegovina</option>
		            <option value="BW">Botswana</option>
		            <option value="BV">Bouvet Island</option>
		            <option value="BR">Brazil</option>
		            <option value="IO">British Indian Ocean Territory</option>
		            <option value="BN">Brunei</option>
		            <option value="BG">Bulgaria</option>
		            <option value="BF">Burkina Faso</option>
		            <option value="BI">Burundi</option>
		            <option value="KH">Cambodia</option>
		            <option value="CM">Cameroon</option>
		            <option value="CA">Canada</option>
		            <option value="CV">Cape Verde</option>
		            <option value="KY">Cayman Islands</option>
		            <option value="CF">Central African Republic</option>
		            <option value="TD">Chad</option>
		            <option value="CL">Chile</option>
		            <option value="CN">China</option>
		            <option value="CX">Christmas Island</option>
		            <option value="CC">Cocos (Keeling) Islands</option>
		            <option value="CO">Colombia</option>
		            <option value="KM">Comoros</option>
		            <option value="CG">Congo</option>
		            <option value="CD">Congo, Democractic Republic</option>
		            <option value="CK">Cook Islands</option>
		            <option value="CR">Costa Rica</option>
		            <option value="CI">Cote D'Ivoire (Ivory Coast)</option>
		            <option value="HR">Croatia (Hrvatska)</option>
		            <option value="CU">Cuba</option>
		            <option value="CY">Cyprus</option>
		            <option value="CZ">Czech Republic</option>
		            <option value="DK">Denmark</option>
		            <option value="DJ">Djibouti</option>
		            <option value="DM">Dominica</option>
		            <option value="DO">Dominican Republic</option>
		            <option value="TP">East Timor</option>
		            <option value="EC">Ecuador</option>
		            <option value="EG">Egypt</option>
		            <option value="SV">El Salvador</option>
		            <option value="GQ">Equatorial Guinea</option>
		            <option value="ER">Eritrea</option>
		            <option value="EE">Estonia</option>
		            <option value="ET">Ethiopia</option>
		            <option value="FK">Falkland Islands (Islas Malvinas)</option>
		            <option value="FO">Faroe Islands</option>
		            <option value="FJ">Fiji Islands</option>
		            <option value="FI">Finland</option>
		            <option value="FR">France</option>
		            <option value="FX">France, Metropolitan</option>
		            <option value="GF">French Guiana</option>
		            <option value="PF">French Polynesia</option>
		            <option value="TF">French Southern Territories</option>
		            <option value="GA">Gabon</option>
		            <option value="GM">Gambia, The</option>
		            <option value="GE">Georgia</option>
		            <option value="DE">Germany</option>
		            <option value="GH">Ghana</option>
		            <option value="GI">Gibraltar</option>
		            <option value="GR">Greece</option>
		            <option value="GL">Greenland</option>
		            <option value="GD">Grenada</option>
		            <option value="GP">Guadeloupe</option>
		            <option value="GU">Guam</option>
		            <option value="GT">Guatemala</option>
		            <option value="GG">Guernsey</option>
		            <option value="GN">Guinea</option>
		            <option value="GW">Guinea-Bissau</option>
		            <option value="GY">Guyana</option>
		            <option value="HT">Haiti</option>
		            <option value="HM">Heard and McDonald Islands</option>
		            <option value="HN">Honduras</option>
		            <option value="HK">Hong Kong S.A.R.</option>
		            <option value="HU">Hungary</option>
		            <option value="IS">Iceland</option>
		            <option value="IN">India</option>
		            <option value="ID">Indonesia</option>
		            <option value="IR">Iran</option>
		            <option value="IQ">Iraq</option>
		            <option value="IE">Ireland</option>
		            <option value="IM">Isle of Man</option>
		            <option value="IL">Israel</option>
		            <option value="IT">Italy</option>
		            <option value="JM">Jamaica</option>
		            <option value="JP">Japan</option>
		            <option value="JE">Jersey</option>
		            <option value="JO">Jordan</option>
		            <option value="KZ">Kazakhstan</option>
		            <option value="KE">Kenya</option>
		            <option value="KI">Kiribati</option>
		            <option value="KR">Korea</option>
		            <option value="KP">Korea, North</option>
		            <option value="KW">Kuwait</option>
		            <option value="KG">Kyrgyzstan</option>
		            <option value="LA">Laos</option>
		            <option value="LV">Latvia</option>
		            <option value="LB">Lebanon</option>
		            <option value="LS">Lesotho</option>
		            <option value="LR">Liberia</option>
		            <option value="LY">Libya</option>
		            <option value="LI">Liechtenstein</option>
		            <option value="LT">Lithuania</option>
		            <option value="LU">Luxembourg</option>
		            <option value="MO">Macau S.A.R.</option>
		            <option value="MK">Macedonia</option>
		            <option value="MG">Madagascar</option>
		            <option value="MW">Malawi</option>
		            <option value="MY">Malaysia</option>
		            <option value="MV">Maldives</option>
		            <option value="ML">Mali</option>
		            <option value="MT">Malta</option>
		            <option value="MH">Marshall Islands</option>
		            <option value="MQ">Martinique</option>
		            <option value="MR">Mauritania</option>
		            <option value="MU">Mauritius</option>
		            <option value="YT">Mayotte</option>
		            <option value="MX">Mexico</option>
		            <option value="FM">Micronesia</option>
		            <option value="MD">Moldova</option>
		            <option value="MC">Monaco</option>
		            <option value="MN">Mongolia</option>
		            <option value="ME">Montenegro</option>
		            <option value="MS">Montserrat</option>
		            <option value="MA">Morocco</option>
		            <option value="MZ">Mozambique</option>
		            <option value="MM">Myanmar</option>
		            <option value="NA">Namibia</option>
		            <option value="NR">Nauru</option>
		            <option value="NP">Nepal</option>
		            <option value="NL">Netherlands</option>
		            <option value="AN">Netherlands Antilles</option>
		            <option value="NC">New Caledonia</option>
		            <option value="NZ">New Zealand</option>
		            <option value="NI">Nicaragua</option>
		            <option value="NE">Niger</option>
		            <option value="NG">Nigeria</option>
		            <option value="NU">Niue</option>
		            <option value="NF">Norfolk Island</option>
		            <option value="MP">Northern Mariana Islands</option>
		            <option value="NO">Norway</option>
		            <option value="OM">Oman</option>
		            <option value="PK">Pakistan</option>
		            <option value="PW">Palau</option>
		            <option value="PS">Palestinian Territory, Occupied</option>
		            <option value="PA">Panama</option>
		            <option value="PG">Papua new Guinea</option>
		            <option value="PY">Paraguay</option>
		            <option value="PE">Peru</option>
		            <option value="PH">Philippines</option>
		            <option value="PN">Pitcairn Island</option>
		            <option value="PL">Poland</option>
		            <option value="PT">Portugal</option>
		            <option value="PR">Puerto Rico</option>
		            <option value="QA">Qatar</option>
		            <option value="RE">Reunion</option>
		            <option value="RO">Romania</option>
		            <option value="RU">Russia</option>
		            <option value="RW">Rwanda</option>
		            <option value="SH">Saint Helena</option>
		            <option value="KN">Saint Kitts And Nevis</option>
		            <option value="LC">Saint Lucia</option>
		            <option value="PM">Saint Pierre and Miquelon</option>
		            <option value="VC">Saint Vincent And The Grenadines</option>
		            <option value="WS">Samoa</option>
		            <option value="SM">San Marino</option>
		            <option value="ST">Sao Tome and Principe</option>
		            <option value="SA">Saudi Arabia</option>
		            <option value="SN">Senegal</option>
		            <option value="RS">Serbia</option>
		            <option value="SC">Seychelles</option>
		            <option value="SL">Sierra Leone</option>
		            <option value="SG">Singapore</option>
		            <option value="SX">Sint Maarten</option>
		            <option value="SK">Slovakia</option>
		            <option value="SI">Slovenia</option>
		            <option value="SB">Solomon Islands</option>
		            <option value="SO">Somalia</option>
		            <option value="ZA">South Africa</option>
		            <option value="GS">South Georgia And The South Sandwich Islands</option>
		            <option value="ES">Spain</option>
		            <option value="LK">Sri Lanka</option>
		            <option value="SD">Sudan</option>
		            <option value="SR">Suriname</option>
		            <option value="SJ">Svalbard And Jan Mayen Islands</option>
		            <option value="SZ">Swaziland</option>
		            <option value="SE">Sweden</option>
		            <option value="CH">Switzerland</option>
		            <option value="SY">Syria</option>
		            <option value="TW">Taiwan</option>
		            <option value="TJ">Tajikistan</option>
		            <option value="TZ">Tanzania</option>
		            <option value="TH">Thailand</option>
		            <option value="TL">Timor-Leste</option>
		            <option value="TG">Togo</option>
		            <option value="TK">Tokelau</option>
		            <option value="TO">Tonga</option>
		            <option value="TT">Trinidad And Tobago</option>
		            <option value="TN">Tunisia</option>
		            <option value="TR">Turkey</option>
		            <option value="TM">Turkmenistan</option>
		            <option value="TC">Turks And Caicos Islands</option>
		            <option value="TV">Tuvalu</option>
		            <option value="UG">Uganda</option>
		            <option value="UA">Ukraine</option>
		            <option value="AE">United Arab Emirates</option>
		            <option value="GB">United Kingdom</option>
		            <option value="US">United States</option>
		            <option value="UM">United States Minor Outlying Islands</option>
		            <option value="UY">Uruguay</option>
		            <option value="UZ">Uzbekistan</option>
		            <option value="VU">Vanuatu</option>
		            <option value="VA">Vatican City State (Holy See)</option>
		            <option value="VE">Venezuela</option>
		            <option value="VN">Vietnam</option>
		            <option value="VG">Virgin Islands (British)</option>
		            <option value="VI">Virgin Islands (US)</option>
		            <option value="WF">Wallis And Futuna Islands</option>
		            <option value="EH">WESTERN SAHARA</option>
		            <option value="YE">Yemen</option>
		            <option value="ZM">Zambia</option>
		            <option value="ZW">Zimbabwe</option>
		         </select>
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
						<input type="text" name="tid" placeholder="Transport Code"  required/> 
					</div>
					<div class="input">
                                            <input type="text" name="tname"  placeholder="Transport Name" required/>
                                        </div>
                                        <!----------start Address section----------->
                                        <div class="section-country">
                                            <select id="addtype" name="addtype" onmousemove="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=0" class="frm-field" required="">
                                                <option value="-1">Select Address Type</option>
                                                <% 
                                                    Connection connect = com.daksham.connection.connection.setConnection();
                                                PreparedStatement ptst = connect.prepareStatement("select * from mstcoderegister where codename like '%Address%'");
                                                ResultSet rs = ptst.executeQuery();
                                                while(rs.next()){
                                                    out.println("<option value="+"\""+rs.getString("recid")+"\""+">"+rs.getString("codevalue")+"</option>");
                                                }
                                                    %>
                                            </select>
                                        </div>
					<div class="section">
						<div class="input-sign details">
                                                    <input type="text" name="add1" placeholder="Address Line 1" required maxlength="45"/> 
						</div>
						<div class="input-sign details1">
                                                    <input type="text" name="add2" placeholder="Address Line 2" maxlength="45"/>
						</div>
						<div class="clear"> </div>
					</div>                                        
					<div class="section">
						<div class="input-sign details">
                                                    <input type="text" name="add3"  placeholder="Address Line 3"/> 
						</div>
						<div class="input-sign details1">
                                                    <input type="text" name="add4"  placeholder="Address Line 4" /> 
						</div>                                           
                                            </div>
                                            <!----------start city section----------->
					<div class="section">
						<div class=" section-country">
							<!--<input type="text"  placeholder="City" required/>--> 
                                                        <select id="city" name="city" onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=0" class="frm-field required">
                                                             <option value="-1">Select City </option>
                                                            <%
                                                                PreparedStatement ptstc = connect.prepareStatement("select * from mstcity where isActive='Y'");
                                                                ResultSet rsc = ptstc.executeQuery();
                                                                while(rsc.next()){
                                                                    out.println("<option value="+"\""+rsc.getString("citycode")+"\""+">"+rsc.getString("cityName")+"</option>");
                                                                }
                                                                %>
                                                            </select>
						</div>                                            
						<div class="clear"> </div>
					</div>
					
<!--                                        Start State Section-->
                                        <div class="section-country">
                                            <select id="State" name="state" onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=0" class="frm-field required">
                                                <option value="-1">Select State</option>
                                                <%
                                                  PreparedStatement ptsts=connect.prepareStatement("select * from  mststate where isActive='Y'");
                                                  ResultSet rss =ptsts.executeQuery();
                                                  while(rss.next()){
                                                      out.println("<option value="+"\""+rss.getString("statecode")+"\""+">"+rss.getString("stateName")+"</option>");
                                                  }
                                                 %>
                                            </select> 
                                        </div>
										
					<!----------start country section----------->
					<div class="section-country">
                                            <select id="country" name="country" onmousedown="if(this.options.length>5){this.size=10;}" onchange="change_country(this.value)" onblur="this.size=0" class="frm-field required">
		            <option value="null"> Country</option>         
		            <option value="AX">Åland Islands</option>
		            <option value="AF">Afghanistan</option>
		            <option value="AL">Albania</option>
		            <option value="DZ">Algeria</option>
		            <option value="AS">American Samoa</option>
		            <option value="AD">Andorra</option>
		            <option value="AO">Angola</option>
		            <option value="AI">Anguilla</option>
		            <option value="AQ">Antarctica</option>
		            <option value="AG">Antigua And Barbuda</option>
		            <option value="AR">Argentina</option>
		            <option value="AM">Armenia</option>
		            <option value="AW">Aruba</option>
		            <option value="AU">Australia</option>
		            <option value="AT">Austria</option>
		            <option value="AZ">Azerbaijan</option>
		            <option value="BS">Bahamas</option>
		            <option value="BH">Bahrain</option>
		            <option value="BD">Bangladesh</option>
		            <option value="BB">Barbados</option>
		            <option value="BY">Belarus</option>
		            <option value="BE">Belgium</option>
		            <option value="BZ">Belize</option>
		            <option value="BJ">Benin</option>
		            <option value="BM">Bermuda</option>
		            <option value="BT">Bhutan</option>
		            <option value="BO">Bolivia</option>
		            <option value="BA">Bosnia and Herzegovina</option>
		            <option value="BW">Botswana</option>
		            <option value="BV">Bouvet Island</option>
		            <option value="BR">Brazil</option>
		            <option value="IO">British Indian Ocean Territory</option>
		            <option value="BN">Brunei</option>
		            <option value="BG">Bulgaria</option>
		            <option value="BF">Burkina Faso</option>
		            <option value="BI">Burundi</option>
		            <option value="KH">Cambodia</option>
		            <option value="CM">Cameroon</option>
		            <option value="CA">Canada</option>
		            <option value="CV">Cape Verde</option>
		            <option value="KY">Cayman Islands</option>
		            <option value="CF">Central African Republic</option>
		            <option value="TD">Chad</option>
		            <option value="CL">Chile</option>
		            <option value="CN">China</option>
		            <option value="CX">Christmas Island</option>
		            <option value="CC">Cocos (Keeling) Islands</option>
		            <option value="CO">Colombia</option>
		            <option value="KM">Comoros</option>
		            <option value="CG">Congo</option>
		            <option value="CD">Congo, Democractic Republic</option>
		            <option value="CK">Cook Islands</option>
		            <option value="CR">Costa Rica</option>
		            <option value="CI">Cote D'Ivoire (Ivory Coast)</option>
		            <option value="HR">Croatia (Hrvatska)</option>
		            <option value="CU">Cuba</option>
		            <option value="CY">Cyprus</option>
		            <option value="CZ">Czech Republic</option>
		            <option value="DK">Denmark</option>
		            <option value="DJ">Djibouti</option>
		            <option value="DM">Dominica</option>
		            <option value="DO">Dominican Republic</option>
		            <option value="TP">East Timor</option>
		            <option value="EC">Ecuador</option>
		            <option value="EG">Egypt</option>
		            <option value="SV">El Salvador</option>
		            <option value="GQ">Equatorial Guinea</option>
		            <option value="ER">Eritrea</option>
		            <option value="EE">Estonia</option>
		            <option value="ET">Ethiopia</option>
		            <option value="FK">Falkland Islands (Islas Malvinas)</option>
		            <option value="FO">Faroe Islands</option>
		            <option value="FJ">Fiji Islands</option>
		            <option value="FI">Finland</option>
		            <option value="FR">France</option>
		            <option value="FX">France, Metropolitan</option>
		            <option value="GF">French Guiana</option>
		            <option value="PF">French Polynesia</option>
		            <option value="TF">French Southern Territories</option>
		            <option value="GA">Gabon</option>
		            <option value="GM">Gambia, The</option>
		            <option value="GE">Georgia</option>
		            <option value="DE">Germany</option>
		            <option value="GH">Ghana</option>
		            <option value="GI">Gibraltar</option>
		            <option value="GR">Greece</option>
		            <option value="GL">Greenland</option>
		            <option value="GD">Grenada</option>
		            <option value="GP">Guadeloupe</option>
		            <option value="GU">Guam</option>
		            <option value="GT">Guatemala</option>
		            <option value="GG">Guernsey</option>
		            <option value="GN">Guinea</option>
		            <option value="GW">Guinea-Bissau</option>
		            <option value="GY">Guyana</option>
		            <option value="HT">Haiti</option>
		            <option value="HM">Heard and McDonald Islands</option>
		            <option value="HN">Honduras</option>
		            <option value="HK">Hong Kong S.A.R.</option>
		            <option value="HU">Hungary</option>
		            <option value="IS">Iceland</option>
		            <option value="IN">India</option>
		            <option value="ID">Indonesia</option>
		            <option value="IR">Iran</option>
		            <option value="IQ">Iraq</option>
		            <option value="IE">Ireland</option>
		            <option value="IM">Isle of Man</option>
		            <option value="IL">Israel</option>
		            <option value="IT">Italy</option>
		            <option value="JM">Jamaica</option>
		            <option value="JP">Japan</option>
		            <option value="JE">Jersey</option>
		            <option value="JO">Jordan</option>
		            <option value="KZ">Kazakhstan</option>
		            <option value="KE">Kenya</option>
		            <option value="KI">Kiribati</option>
		            <option value="KR">Korea</option>
		            <option value="KP">Korea, North</option>
		            <option value="KW">Kuwait</option>
		            <option value="KG">Kyrgyzstan</option>
		            <option value="LA">Laos</option>
		            <option value="LV">Latvia</option>
		            <option value="LB">Lebanon</option>
		            <option value="LS">Lesotho</option>
		            <option value="LR">Liberia</option>
		            <option value="LY">Libya</option>
		            <option value="LI">Liechtenstein</option>
		            <option value="LT">Lithuania</option>
		            <option value="LU">Luxembourg</option>
		            <option value="MO">Macau S.A.R.</option>
		            <option value="MK">Macedonia</option>
		            <option value="MG">Madagascar</option>
		            <option value="MW">Malawi</option>
		            <option value="MY">Malaysia</option>
		            <option value="MV">Maldives</option>
		            <option value="ML">Mali</option>
		            <option value="MT">Malta</option>
		            <option value="MH">Marshall Islands</option>
		            <option value="MQ">Martinique</option>
		            <option value="MR">Mauritania</option>
		            <option value="MU">Mauritius</option>
		            <option value="YT">Mayotte</option>
		            <option value="MX">Mexico</option>
		            <option value="FM">Micronesia</option>
		            <option value="MD">Moldova</option>
		            <option value="MC">Monaco</option>
		            <option value="MN">Mongolia</option>
		            <option value="ME">Montenegro</option>
		            <option value="MS">Montserrat</option>
		            <option value="MA">Morocco</option>
		            <option value="MZ">Mozambique</option>
		            <option value="MM">Myanmar</option>
		            <option value="NA">Namibia</option>
		            <option value="NR">Nauru</option>
		            <option value="NP">Nepal</option>
		            <option value="NL">Netherlands</option>
		            <option value="AN">Netherlands Antilles</option>
		            <option value="NC">New Caledonia</option>
		            <option value="NZ">New Zealand</option>
		            <option value="NI">Nicaragua</option>
		            <option value="NE">Niger</option>
		            <option value="NG">Nigeria</option>
		            <option value="NU">Niue</option>
		            <option value="NF">Norfolk Island</option>
		            <option value="MP">Northern Mariana Islands</option>
		            <option value="NO">Norway</option>
		            <option value="OM">Oman</option>
		            <option value="PK">Pakistan</option>
		            <option value="PW">Palau</option>
		            <option value="PS">Palestinian Territory, Occupied</option>
		            <option value="PA">Panama</option>
		            <option value="PG">Papua new Guinea</option>
		            <option value="PY">Paraguay</option>
		            <option value="PE">Peru</option>
		            <option value="PH">Philippines</option>
		            <option value="PN">Pitcairn Island</option>
		            <option value="PL">Poland</option>
		            <option value="PT">Portugal</option>
		            <option value="PR">Puerto Rico</option>
		            <option value="QA">Qatar</option>
		            <option value="RE">Reunion</option>
		            <option value="RO">Romania</option>
		            <option value="RU">Russia</option>
		            <option value="RW">Rwanda</option>
		            <option value="SH">Saint Helena</option>
		            <option value="KN">Saint Kitts And Nevis</option>
		            <option value="LC">Saint Lucia</option>
		            <option value="PM">Saint Pierre and Miquelon</option>
		            <option value="VC">Saint Vincent And The Grenadines</option>
		            <option value="WS">Samoa</option>
		            <option value="SM">San Marino</option>
		            <option value="ST">Sao Tome and Principe</option>
		            <option value="SA">Saudi Arabia</option>
		            <option value="SN">Senegal</option>
		            <option value="RS">Serbia</option>
		            <option value="SC">Seychelles</option>
		            <option value="SL">Sierra Leone</option>
		            <option value="SG">Singapore</option>
		            <option value="SX">Sint Maarten</option>
		            <option value="SK">Slovakia</option>
		            <option value="SI">Slovenia</option>
		            <option value="SB">Solomon Islands</option>
		            <option value="SO">Somalia</option>
		            <option value="ZA">South Africa</option>
		            <option value="GS">South Georgia And The South Sandwich Islands</option>
		            <option value="ES">Spain</option>
		            <option value="LK">Sri Lanka</option>
		            <option value="SD">Sudan</option>
		            <option value="SR">Suriname</option>
		            <option value="SJ">Svalbard And Jan Mayen Islands</option>
		            <option value="SZ">Swaziland</option>
		            <option value="SE">Sweden</option>
		            <option value="CH">Switzerland</option>
		            <option value="SY">Syria</option>
		            <option value="TW">Taiwan</option>
		            <option value="TJ">Tajikistan</option>
		            <option value="TZ">Tanzania</option>
		            <option value="TH">Thailand</option>
		            <option value="TL">Timor-Leste</option>
		            <option value="TG">Togo</option>
		            <option value="TK">Tokelau</option>
		            <option value="TO">Tonga</option>
		            <option value="TT">Trinidad And Tobago</option>
		            <option value="TN">Tunisia</option>
		            <option value="TR">Turkey</option>
		            <option value="TM">Turkmenistan</option>
		            <option value="TC">Turks And Caicos Islands</option>
		            <option value="TV">Tuvalu</option>
		            <option value="UG">Uganda</option>
		            <option value="UA">Ukraine</option>
		            <option value="AE">United Arab Emirates</option>
		            <option value="GB">United Kingdom</option>
		            <option value="US">United States</option>
		            <option value="UM">United States Minor Outlying Islands</option>
		            <option value="UY">Uruguay</option>
		            <option value="UZ">Uzbekistan</option>
		            <option value="VU">Vanuatu</option>
		            <option value="VA">Vatican City State (Holy See)</option>
		            <option value="VE">Venezuela</option>
		            <option value="VN">Vietnam</option>
		            <option value="VG">Virgin Islands (British)</option>
		            <option value="VI">Virgin Islands (US)</option>
		            <option value="WF">Wallis And Futuna Islands</option>
		            <option value="EH">WESTERN SAHARA</option>
		            <option value="YE">Yemen</option>
		            <option value="ZM">Zambia</option>
		            <option value="ZW">Zimbabwe</option>
		         </select>
                                            </div>
                                        <div class="section">
                                            <div class="input-sign details">
							<input type="text" name="landmark" placeholder="Landmark"/> 
						</div>
                                            <div class="input-sign details1">
                                                <input type="text" name="pincode"  placeholder="Pincode"/>                                                        
						</div>              
                                        </div>
                                        <div class="section-country">
                                            <select id="State" name="location" onmousedown="if(this.options.length>5){this.size=5;}" onchange="this.value()" onblur="this.size=0" class="frm-field" required=""> 
                                                <option value="-1">Select Transport Location</option>
                                                <option value="All India Permit">All India Permit</option>
                                                <option value="Inter City">Inter City</option>
                                                <option value="Domestic">Domestic</option>
                                                <option value="Local">Local</option>
                                                    </select>
                                        </div>
                                        <div class="input">
                                            <input type="text" name="tabb"  placeholder="Transport Abbreviation"/>
                                        </div>  
                                        <div class="input">
                                            <input type="text" name="tgst"  placeholder="GSTCODE" />
                                        </div> 
                                        <div class="section">
                                            <div class="input-sign details">
                                                <input type="text" name="cno1" placeholder="Mobile" required/> 
						</div>
                                            <div class="input-sign details1">
                                                <input type="text" name="cno2"  placeholder="Contact Number" />                                                        
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
