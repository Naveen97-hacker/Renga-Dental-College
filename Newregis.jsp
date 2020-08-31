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
.center {
  margin: auto;
  width: 60%;
  padding: 10px;
  padding-left: 400px;
}
input[type=text], input[type=password] {
  width: 50%;
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
<h1>New Student Registration</h1>
 <form action="Details" method="get">
 <div class="center">
<div class="container">
	<label for="text"><b>Name :</b></label><br>
    <input type="text" placeholder="Enter your Name" name="name" required>
	<br><br>
	<label for="text"><b>Date of Birth :</b></label><br>
    <input type="date" placeholder="Enter your DoB" name="dob"required>
	<br><br><br>
	<label for="text"><b>Contact Number:</b></label><br>
    <input type="text" placeholder="Enter your Number" name="number" required>
	<br><br>
	<label for="text"><b>Mail-ID :</b></label><br>
    <input type="text" placeholder="Enter your Mail-ID" name="id" required>
    <br><br>
    <b>Department : </b>
  <select name="dept">
  <option value="OMFS">OMFS</option>
  <option value="ENDODONTICS">ENDODONTICS</option>
  <option value="PERIODONTICS">PERIODONTICS</option>
  <option value="ORTHODONTICS">ORTHODONTICS</option>
  <option value="PEDODONTICS">PEDODONTICS</option>
  <option value="PROSTHODONTICS">PROSTHODONTICS</option>
  </select>
    <br><br>
    <b>Year of passing : </b>
  <select name="passing">
  <option value="2020">2020</option>
  <option value="2019">2019</option>
  <option value="2018">2018</option>
  <option value="2017">2017</option>
  <option value="2016">2016</option>
  </select>
  <br><br><br>
  <b>Gender : </b>
  <select name="gender">
  <option value="Male">Male</option>
  <option value="Female">Female</option>
  <option value="Other">Other</option>
  </select>
  <br><br><br>
  <label for="text"><b>12th Mark :</b></label><br>
    <input type="text" placeholder="Enter your Mark" name="mark" required>
    <br><br>
    <label for="text"><b>Adress :</b></label><br>
    <input type="text" placeholder="Enter your Adress" name="adress" required>
  <br><br>
  <input type="reset" value="RESET" class="registbtn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="submit" class="registerbtn">Register</button>
 </div>
 </div><br> <br>
 </form>
<hr style="width:75%">
<br> <br>
<footer>
 <p>RENGA INSTITUTE OF DENTAL SCIENCE, Nungambakkam, Chennai, Tamil Nadu, 600097</p>
  <p>+91 8939749592  RengaWebsite@gmail.com</p>
 <p>Designed and developed by Vishaal Rengan</p>

 </footer>
</body>
</html>