<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0,0,0);
	background-color: rgba(0,0,0,0.4);
	padding-top: 60px;
}

.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	border: 1px solid #888;
	width: 80%;
}

.close {
	position: absolute;
	right: 25px;
	top: 0;
	color:#000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover,
.close:focus {
	color: red;
	cursor: pointer;
}

.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)}
	to{-webkit-transform: scale(1)}
}

@keyframes animatezoom {
	from {transform: scale(0)}
	to {transform: scale(1)}
}

@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
</head>
<body>

<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
<button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Create Account</button>

<div id="id01" class="modal">
	<form class="modal-content animate" action="/action_page.php">
		<div class="imgcontainer">
			<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close">&times;</span>
				<img src="img_avatar2.png" alt="Avatar" class="avatar">
</div>

<div class="container">
	<label for="uname"><b>Username</b>
</label>

<input type="text" placeholder="Enter Username" name="uname" required>

<label for="psw"><b>Password</b></label>
<input type="password" placeholder="Enter Password" name="psw" required>
<button type="submit">Login</button>
<label>
	<input type="checkbox"
checked="checked" name="remember"> Remember me
</label>
</div>

<div class ="container"
style="background-color:#f1f1f1">
	<button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
	<span class="psw">Forgot <a href="#">password?</a></span>
</div>
</form>
</div>

<div id="id02" class="modal">
	<form class="modal-content animate" action="/action_page.php">
		<div class="imgcontainer">
			<span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close">&times;</span>
				<img src="img_avatar2.png" alt="Avatar" class="avatar">
</div>

<div class="container">
	<h1>Create New Account</h1>
<input type="text" placeholder="Username" name="uname" required>
<input type="password" placeholder="Password" name="psw" required>
<input type="password" placeholder="Password Check" name="pswcheck" required>
<button type="submit">Login</button>
<label>
	<input type="checkbox" checked="checked" name="remember"> Remember me
</label>
</div>

<div class ="container"
style="background-color:#f1f1f1">
	<button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
	<span class="psw">Forgot <a href="#">password?</a></span>
</div>
</form>
</div>

<script>

var modal = document.getElementByID('id01');

window.onclick = function(event) {
	if(event.target ==modal) {
		modal.style.display = "none";
	}
}

</script>

<script>

	var modal2 = document.getElementByID('id02');
	
	window.onclick = function(event) {
		if(event.target ==modal2) {
			modal2.style.display = "none";
		}
	}
	
	</script>

</body>
</html>

