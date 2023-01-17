<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.container{
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box select{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
 #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: #9b59b6;
   border-color: #d9d9d9;
 }
 form input[type="radio"]{
   display: none;
 }
 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #71b7e6, #9b59b6);
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}

</style>
<script type="text/javascript">
	function regvalidation() {

		var name = document.getElementById("fullname").value
		var letters = /^[a-zA-Z]+[\-'\s]?[a-zA-Z ]+$/;
		
		var pen=document.getElementById("pennumber").value;
		var pennumbers=/^[0-9]{6}$/;
		
	var gender=document.getElementById("gender");
	
	

		var email = document.getElementById("email").value;
		var emailpattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

		var phone = document.getElementById("phone").value
		var numbers = /^(?:(?:\+|0{0,2})91(\s*|[\-])?|[0]?)?([6789]\d{2}([ -]?)\d{3}([ -]?)\d{4})$/;

		var address = document.getElementById("address").value
		var addressletters = /^[a-zA-Z0-9\s\,\''\-]*$/;

		var pwd = document.getElementById("password").value;

		var cpwd = document.getElementById("cpassword").value;
		var pwdexpression = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*()-])/;
		//var gender = document.getElementById("gender").value;
		
		
        
		
	 	if (name == '') {

			alert('Please enter your full name');
			document.getElementById("fullname").focus();
			return false;
		}
		if (!letters.test(name)) {
			alert('Name field required only alphabet characters')
			return false;
		}
		
		if(pen==''){
			alert('Please Enter PEN Number');
			document.getElementById("pennumber").focus();
			return false;
		}
		if(!pennumbers.test(pen)){
			alert('Invalid PEN Number');
			document.getElementById("pennumber").focus();
			return false;
		}
		/* if (gender.value == "") {
            //If the "Please Select" option is selected display error.
            alert("Please select your gender!");
            return false;
        } */
	 
		
		if(email==''){
			alert('Please Enter Email Id')
			document.getElementById("email").focus();
			return false;
		}
		if(!emailpattern.test(email)){
			alert('Invalid Email')
			document.getElementById("email").focus();
			return false;
		}
		
		

		if (phone == '') {
			alert('Please enter your phone')
			document.getElementById('phone').focus();
			return false;
		}
		if (!numbers.test(phone)) {
			alert('Invalid number')
			document.getElementById('phone').focus();
			return false;
		}
		

		if (address == '') {
			alert('Enter your  address');
			document.getElementById('address').focus();
			return false;
		}

		if (!addressletters.test(address)) {
			alert('Invalid address');
			document.getElementById('address').focus();
			return false;
		}

		if (pwd == '') {
			alert('Please enter your password')
			document.getElementById('password').focus();
			return false;

		}
		if (!pwdexpression.test(pwd)) {
			alert('Upper case, Lower case, Special character and Numeric letter are required in Password filed');
			document.getElementById('password').focus();
			return false;

		}
		if (pwd == '') {
			alert('Please enter your password')
			document.getElementById('password').focus();
			return false;

		}

		if (cpwd == '') {
			alert('Please confirm your password');
			document.getElementById('cpassword').focus();
			return false;
		}
		if (pwd != cpwd) {
			alert('Password not matching');
			document.getElementById('cpassword').focus();
			return false;
		} 
		
		

		return true;

	}
</script>
</head>
<body>
<div class="content">
      <form action="admin_home_page.jsp"method=""onsubmit="return regvalidation()">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text"name="fullname"id="fullname"placeholder="Enter your name" >
          </div>
           <div class="input-box">
            <span class="details">PEN Number</span>
            <input type="text"name="pennumber"id="pennumber" placeholder="Enter your PEN Number" >
          </div>
<!-- <div class ="input-box">
          <span class="details">Gender</span>
          
   <select name="gender" id="gender" required="required">
          <option value="select gender">Select Gender</option>
    <option value="male">Male</option>
    <option value="female">Female</option>
    <option value="other">Other</option>
    
  </select>
  <br><br>
          </div> -->
    <div class="gender-details">

				<input type="radio" name="gender" id="dot-1" value="male" checked="checked" required="required"> <input
					type="radio" name="gender" id="dot-2" value="female"> <input
					type="radio" name="gender" id="dot-3" value="other"> 
					
					            <span class="details">Gender</span>
					
				<div class="category">
					<label for="dot-1" class="input-box"> <span class="dot one "></span> <span style="width: 100px;"
						class="gender">Male</span>
					</label> <label for="dot-2" class="input-box"> <span class="dot two"></span> <span  style="width: 100px;"
						class="gender">Female</span>
					</label> <label for="dot-3" class="input-box"> <span class="dot three"></span> <span  style="width: 100px;"
						class="gender">Prefer not to say</span>
					</label>
				</div>
			</div>
  
          
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text"name="email"id="email" placeholder="Enter your email" >
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text"name="phone"id="phone" placeholder="Enter your number" >
          </div>
          <div class="input-box">
            <span class="details">Resident Address</span>
            <input type="text"name="address"id="address"placeholder="address" >
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input type="password"name="password" id="password"placeholder="Enter your password" >
          </div>
          <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="password"name="cpassword"id="cpassword"placeholder="Confirm your password" >
          </div>
          
          
        </div>
        
    
        <div class="button">
          <input type="submit" value="Register">
        </div>
              </form>
    </div>

</body>
</html>