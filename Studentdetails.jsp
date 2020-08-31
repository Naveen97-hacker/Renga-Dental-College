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
h3{
font-size: 20px;
text-align: center;
color: grey;
line-height: 2;
padding-right: 180px;
}
h2{
  color:white;
  text-align: center;
  padding-left: 150px;
  }
  h1{
  text-align: center;
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
* {
  box-sizing: border-box;
  border-radius: 12px;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 90%;
  background: #f1f1f1;
}

.registerbtn {
  background-color: tomato;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 40%;
  opacity: 0.9;
}

form.example button:hover {
  background: black;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
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
<br> <br>

<h1>Search Student Details</h1>
<br>
<h3>Student ID :</h3>
<form class="example" action="Searching" method="get" style="margin:auto;max-width:300px">
  &nbsp;&nbsp;<input type="text" placeholder="Enter the Student ID" name="id"><br>
  <br><br><br>
   <button type="submit" class="registerbtn">Search</button>
</form>

<br> 
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