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
.button {
  background-color: tomato;
  border: none;
  color: white;
  padding: 15px 20px;
  text-align: center;
  text-decoration: none;
  width:25%;
  border-radius: 12px;
  display: inline-block;
  font-size: 16px;
  margin: 4px 40px;
  cursor: pointer;
}

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
.center {
  margin: auto;
  width: 60%;
  padding: 10px;
  padding-left: 500px;
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
</style>
</head>
<body>
<div class="heading">
<br><br><a href="login.jsp" style="color:yellow; float: right;padding-right: 60px; ">Login</a>
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
<br> <br><br> 
<h2 style="text-align: center;color:black;padding-left: 0">Student login</h2>
<br><br>
<form action="stuverify" method="get">
<div class="center">
<div class="container">
	<label for="text"><b>Student-ID :</b></label><br>
    <input type="text" placeholder="Enter your Admin-ID" name="id" required>
	<br>
	<label for="text"><b>Password :</b></label><br>
    <input type="password" placeholder="Enter your Password" name="pass"required>
	<br><br>
<input type="reset" value="RESET" class="registbtn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="submit" class="registerbtn">Register</button>
   </div>
   </div>
</form>
<br><br> <br><br> <br>
<hr style="width:75%">
<br> <br>
<footer>
 <p>RENGA INSTITUTE OF DENTAL SCIENCE, Nungambakkam, Chennai, Tamil Nadu, 600097</p>
  <p>+91 8939749592  RengaWebsite@gmail.com</p>
 <p>Designed and developed by Vishaal Rengan</p>

 </footer>
</body>
</html>