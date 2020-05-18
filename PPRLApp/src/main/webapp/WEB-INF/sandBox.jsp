<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<svg xmlns="http://www.w3.org/2000/svg" version="1.1" style="width: 0;height: 0;">
  <defs>
    <filter id="goo">
      <feGaussianBlur in="SourceGraphic" stdDeviation="4" result="blur" />
      <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo" />
      <feBlend in="SourceGraphic" in2="goo" />
    </filter>
  </defs>
</svg>

<link href="https://fonts.googleapis.com/css?family=Raleway:300,500,700,900" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
<title>Insert title here</title>


	<style type="text/css">
	

.title {
  font-weight: 900;
  font-size: 20vw;
  margin: 0;
  filter: url(#goo);
  position: relative;
  letter-spacing: -.12em;
  color: red;
  text-transform: uppercase;
}


.drop {
  width: .1em; height: .1em;
  border-radius: 0 100% 100% 100%;
  background-color: currentColor;
  position: absolute;
  top: 72%;
  animation: drop 3s infinite both;

  &:nth-child(1) {
    left: 14%;
  }

  &:nth-child(2) {
    left: 39%;
    animation-delay: -.4s;
  }

  &:nth-child(3) {
    left: 55%;
    animation-delay: -1.5s;
  }

  &:nth-child(4) {
    left: 82%;
    animation-delay: -.8s;
  }

  &:nth-child(5) {
    left: 95.5%;
    animation-delay: -1.3s;
  }
}

@keyframes drop {
  0% {
    transform: translateY(0) scaleX(.85) rotate(45deg);
    animation-timing-function: ease-out;
  }
  60% {
    transform: translateY(120%) scaleX(.85) rotate(45deg);
    animation-timing-function: ease-in;
  }
  80%, 100% {
    transform: translateY(60vh) scaleX(.85) rotate(45deg);
  }
}

	
	
	
	
	
	
h1 {
	color: crimson;
	font-family: 'Anton', sans-serif;
	font-weight: bold;
	-webkit-text-stroke-width: 2px;
	-webkit-text-stroke-color: black;
}

p {
	color: yellow;
	font-family: 'Anton', sans-serif;
	font-weight: bold;
}
body {
	background-color: purple;
}
.button {
	transition-duration: 0.4s;
	border-radius: 4px;
	margin-top: 4px;
}
.button:hover {
	background-color: purple /* Green */
	color: white;
	margin-top: 4px;
}
body:after {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	color: black;
	text-align: center;
	content: "Lipstick on A Pig Productions"
}

.blinking{
	animation:blinkingText 0.1s infinite;
}
.blinkings{
	animation:blinkingText 1.1s infinite;
}
.leaveMe{
	animation:blinkingText 0.7s infinite;
}
@keyframes blinkingText{
	0%{		color: #000;	}
	20%{	color: green;	}
	49%{	color: orange;	}
	50%{	color: yellow;	}
	99%{	color: red;	}
	100%{	color: #000;	}
} 

p {
  text-align: center;
  font-size: 60px;
  margin-top: 0px;
}

</style>

	
</head>
<body>


<h1><span class="blinking">YOU BROKE IT. YOU BROKE IT. YOU BROKE IT. YOU BROKE IT. YOU BROKE IT. YOU BROKE IT. YOU BROKE IT YOU BROKE IT YOU BROKE IT.</span></h1> 
<h1><span class="blinkings">DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO</span></h1> 

<p> BRAIN MELTDOWN COUNTDOWN </p>
<p id="demo"></p>
<script>
// Set the date we're counting down to
var countDownDate = new Date("May 18, 2020 11:37:25").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time
  var now = new Date().getTime();
    
  // Find the distance between now and the count down date
  var distance = countDownDate - now;
    
  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
  // Output the result in an element with id="demo"
  document.getElementById("demo").innerHTML = days + "d " + hours + "h "
  + minutes + "m " + seconds + "s ";
    
  // If the count down is over, write some text 
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "EXPIRED";
  }
}, 1000);
</script>


<a href="index.do">
<p><span class ="leaveMe"> LEAVE WHILE YOU STILL CAN!!!</span><p>
</a>
<h1><span class="blinkings">¯\_(ツ)_/¯ ¯\_(ツ)_/¯ ¯\_(ツ)_/¯ ¯\_(ツ)_/¯ ¯\_(ツ)_/¯ ¯\_(ツ)_/¯ ¯\_(ツ)_/¯ ¯\_(ツ)_/¯</span></h1> 
<h1><span class="blinkings">DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO DAO </span></h1> 

</body>
</html>



<svg xmlns="http://www.w3.org/2000/svg" version="1.1" style="width: 0;height: 0;">
  <defs>
    <filter id="goo">
      <feGaussianBlur in="SourceGraphic" stdDeviation="4" result="blur" />
      <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo" />
      <feBlend in="SourceGraphic" in2="goo" />
    </filter>
  </defs>
</svg>

<h1 class="title">
  <strong>HELP</strong>
  <span class="drop"></span>
  <span class="drop"></span>
  <span class="drop"></span>
  <span class="drop"></span>
  <span class="drop"></span>
</h1>




</body>
</html>
