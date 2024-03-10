<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Telaverge</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="css/bootstrap.css"></link>
 <style>
 .login-form {
  background: #fee;
  width: 800px;
  margin: 10px auto;
  display: -webkit-box;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
          flex-direction: column;
          font-weight: 700;
  border-radius: 70px;
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.2);
}
.login-form h1 {
  padding: 50px 50px 0 50px;
  font-weight: 500;
}
.login-form .content {
  padding: 35px;
  text-align: center;
}
 
 </style>
</head>
<body class="bg-danger" >
<style>
 .container-sm {
 max-width: 700px;
 }
 .login-form a.link {
  text-decoration: none;
  color: #747474;
  letter-spacing: 0.2px;
  text-transform: uppercase;
  display: inline-block;
  margin-top: 20px;
}
 </style>
 <div class="container-sm">
 <main>
 <div class="py-5 text-center">
 
 </div>
 <div>
 <div class="my-4">
 <div class="login-form">
 
 <form action="studentRegistrationClass" method="post">
  &nbsp;&nbsp;&nbsp;&nbsp;<h2 style=style="font-size:34px">
    <a href="index.html" class="link">Go Back</a>
    </h2>
 <center><h1>User registration form</h1></center>
 <p class="lead"><b><i>Please Enter You are Correct Details</i></b></p>
 <div class="row g-3">
 <div class="col-sm-6">
 
 <label  class="form-label">First name</label>
 <input type="text" class="form-control" name="firstname" placeholder="" value="" required>
 </div>
 
 <div class="col-sm-6">
 <label for="lastName" class="form-label">Last name</label>
 <input type="text" class="form-control" name="lastname" placeholder="" value="" required>
 </div>
 
 <div class="col-sm-6">
 <label for="email" class="form-label">Email</label>
 <input type="email" class="form-control" name="email" placeholder="you@example.com" 
required>
 </div>
 
 
 <div class="col-md-3">
 <label for="password" class="form-label">password</label>
 <input type="password" class="form-control" name="password" required>
 </div>
 
 <div class="col-md-6">
 <div class="form-check">
 <label>Gender</label> 
 </div>
 <div class="form-check">
 <input class="form-check-input" type="radio" name="gender" value="male" 
id="flexRadioDefault1">
 <label class="form-check-label" >Male</label>
 </div>
 <div class="form-check">
 <input class="form-check-input" type="radio" name="gender" value="female"  checked>
 <label class="form-check-label" for="flexRadioDefault2">
 Female
 </label>
</div></div>

 
 
 <div class="col-sm-6">
 <label for="idcard" class="form-label">Upload your Id proof</label>
 <input type="file" class="form-control" name="idcard" required>
 </div>
   
 <hr class="my-4">
 <button class="w-100 btn btn-primary btn-lg" type="submit" width=50>Submit</button>
 </form>
 </div>
 </div> 
 </div>
 </main>
 </div>
</body>
