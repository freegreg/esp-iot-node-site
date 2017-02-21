<!DOCTYPE html>
<html>
<title>WiFi Control</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./css/w3.css">
<script type="text/javascript" src="./script/style.js"></script>
<script type="text/javascript" src="./script/ajax.js"></script>
<body>
  <!-- Favicon
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
<link rel="icon" type="image/png" href="./images/favicon.png">

<script type="text/javascript" src="./script/140medley.min.js"></script>
</head>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-green w3-card-2 w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-opennav w3-right w3-padding-large w3-hover-white w3-large w3-green" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="./index.html" class="w3-bar-item w3-button w3-padding-large w3-hover-white">RELAY</a>
    <a href="./wifi.tpl" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-white">WIFI</a>
    <a href="./flash.html" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">FLASH</a>
    <a href="./timer.html" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">TIMER</a>
  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-navblock w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a class="w3-padding-large" href="/">RELAY</a>
    <a class="w3-padding-large" href="/wifi.tpl">WIFI</a>
    <a class="w3-padding-large" href="/flash.html">FLASH</a>
    <a class="w3-padding-large" href="/timer.html">TIMER</a>
  </div>
</div>

<!-- Header -->
<header class="w3-container w3-green w3-center w3-padding-24">
  <h1 class="w3-margin w3-jumbo">WiFi Control</h1>
	<p class="w3-medium">Current WiFi mode: %WiFiMode%</p>
	<p class="w3-medium">Note: %WiFiapwarn%</p>
</header>

<!-- First Grid -->
<div class="w3-row-padding w3-padding-12 w3-container w3-center">
  <div class="w3-content">
      <h5 class="w3-padding-24">To connect to a WiFi network, please select one of the detected networks...</h5>
		<form name="wifiform" action="connect.cgi" method="post">  
		<table class="w3-table-all w3-hoverable">
			<thead>
    			<tr>
        			<th>Select</th>
    				<th>Name (SSID)</th>
      				<th>Power (RSSI)</th>
      				<th>Security</th>
    			</tr>
  			</thead>
  			<tbody  id="aps">
  			</tbody>
		</table>
  </div>
</div>

<!-- Second Grid -->
<div class="w3-row-padding w3-padding-12 w3-container w3-center">
  <div class="w3-content">
	<div class="w3-card-8">
		<form class="w3-container">
 			<label class="w3-text-blue"><b>WiFi password, if applicable:</b></label>
      		<input type="text" class="w3-input w3-margin" placeholder="Password" id="wifiPass" val="%WiFiPasswd%">
			<input type="submit" class="w3-btn w3-blue w3-margin" name="connect" value="Connect!">
		</form>
   	</div>
  </div>
</div>

<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
    <h1 class="w3-margin w3-xlarge"><i>Technology is just a tool. In terms of getting the kids working together and motivating them, the teacher is the most important.</i></h1>
	<p>Bill Gates</p>
</div>

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
 <p>Powered by <a href="#" target="_blank">Greg</a></p>
</footer>

</body>
</html>