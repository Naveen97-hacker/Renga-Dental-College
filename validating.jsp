<!DOCTYPE html>
<html>
<head>

<title>Dental Hospital</title>
<style>
.heading {
  background-color: #102029;
  height: 200px;
  width: 100%;
  font-family: "Times New Roman", Times, serif; 
}
.heading a {
  float: left;
  font-size: 16px;
  color: white;
  padding: 10px 16px;
  font-family: inherit;
  text-decoration: none;
  
}
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 100px;
  width: 100%;
  text-align: center;
}
a:hover {
  color: yellow;
}
p{
font-size: 20px;
text-align: center;
color: grey;
line-height: 2;
padding-left: 80px;
padding-right: 80px;}
h2{
  color:white;
  text-align: center;
  padding-left: 150px;
  }
  footer
{
	height:30px;
	position: relative;
	left: 0;
	bottom: 0;
	width: 100%;
	text-align:center;
	font-size: 20px; 
	padding: 50px 0px 0px 0px;	
}
footer p
{
	font-size: 16px;
  color:grey;
}
input[type=text], input[type=password] {
  width: 30%;
  padding: 5px;
  margin: 5px 0 15px 0;
  display: inline-block;
  border: none;
  
  background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  padding-left: 80px;
  outline: none;
}
.registerbtn {
  background-color: tomato;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
  opacity: 0.9;
}
.registbtn {
  background-color: tomato;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 15%;
  opacity: 0.9;
}
.center {
  margin: auto;
  width: 60%;
  padding: 10px;
  padding-left: 520px;
}
</style>
</head>
<body>
<div class="heading">
<br><br><a href="login.jsp" style="color:white; float: right;padding-right: 60px; ">Login</a>
<h2>RENGA INSTITUTE OF DENTAL SCIENCE</h2>
<br>
<a href="Home.html" style="padding-left: 330px;">Home</a>
<a href="Profile.html">Profile</a>
<a href="Dept.html">Departments</a>
<a href="login.jsp">Admission</a>
<a href="Infra.html">Infrastructure</a>
<a href="Frontpage.html"> Hospital</a>
<a href="Contact.html">Contact</a>
</div>
<form action="Printdisplay" method="get">
<br> <br>
	<p>Name               	  : <b>${Name}</b> </p>
    <p>Student ID         	  : <b>${Id}</b> </p>
    <p>Old Password           : <b>${Password}</b> </p>
    
    <div class="center">
    <h3 style="text-align: left;color: grey;"><b>Student-ID  : </b></h3>
    <input type="text" placeholder="Confirm your Student-ID" name="id" required><br><br>
    <h3 style="text-align: left;color: grey;"><b>Enter new Password  : </b></h3>
    <input type="password" placeholder="Enter your New-Password" name="pass" required><br><br>
    <button type="submit" class="registerbtn">Register</button>
    </div>
    </form>
<br><br> <br> <br>
<hr style="width:75%">
<br> <br>
<footer>
 <p>RENGA INSTITUTE OF DENTAL SCIENCE, Nungambakkam, Chennai, Tamil Nadu, 600097</p>
  <p>+91 8939749592  RengaWebsite@gmail.com</p>
 <p>Designed and developed by Vishaal Rengan</p>

 </footer>
</body>
</html>