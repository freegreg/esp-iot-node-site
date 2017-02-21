setInterval(updateSwitch, 2000); //1000 MS == 1 s

var relayState = false;
function changeState() {
var xhttp;
if (window.XMLHttpRequest) {
    xhttp = new XMLHttpRequest();
    } else {
    // code for IE6, IE5
    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
}
  xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
    if (this.responseText == "true"){
      relayState = true;
    }
    else if (this.responseText == "false"){
      relayState = false;
    }
  }
  };
  xhttp.open("GET", "relayToggle", true);
  xhttp.send();
}


function updateSwitch() {
var xhttp;
if (window.XMLHttpRequest) {
    xhttp = new XMLHttpRequest();
    } else {
    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
}
  xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
    if (this.responseText == "true"){
      relayState = true;
    }
    else if (this.responseText == "false"){
      relayState = false;
    }
  }
  };
  xhttp.open("GET", "updateRelay", true);
  xhttp.send();
}

function onClickRelayButton(){
	var relNote = document.getElementById("idButtonRelayNote");
	var relButton = document.getElementById("idRelayButton");
	if (relayStatus){
		relayStatus = false;
		relNote.innerHTML = "or push button to switch on Relay"
		relButton.innerHTML = "Relay On"
	}
	else{
		relayStatus = true;
		relNote.innerHTML = "or push button to switch off Relay"
		relButton.innerHTML = "Relay Off"
	}
}

function onClickRelaySwtich(){
	var relNote = document.getElementById("idRelaySwitchNote");
	var relSwitch = document.getElementById("idRelaySwitch");
	if (relSwitch.checked){
		//relSwitch.checked = true;
		relayStatus = true;
		relNote.innerHTML = "Switch off Relay"
	}
	else{
		//relSwitch.checked = false;
		relayStatus = false;
		relNote.innerHTML = "Switch on Relay"
	}
}