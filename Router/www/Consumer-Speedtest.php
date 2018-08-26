<?php include('logincheck.php');?>
<!doctype html>
<html lang="en"><!-- InstanceBegin template="/Templates/RWR-Template.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta charset="utf-8"> 
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- InstanceBeginEditable name="doctitle" -->
<title>Photo Frame Router</title>
<!-- InstanceEndEditable -->
<link href="css/stylesheet.css" rel="stylesheet" type="text/css">
<link href="css/CssMenuStylesheet.css" rel="stylesheet" type="text/css">
<script src="Scripts/jquery-2.1.3.min.js" type="text/javascript"></script>
<script src="Scripts/CssMenuScript.js" type="text/javascript"></script>
<!-- InstanceBeginEditable name="head" -->
<script>
function ReturnProgress() {
    
	document.getElementById('status').innerHTML = 'Please stand by, rebooting ...';
	document.getElementById('progress').innerHTML = '<img src="images/ProgressIndicator.GIF" width="100" height="15"  alt="">';
}
function GoToHome() {
	window.location = '/login.php';
}
</script>
<?php include 'functions.php';?>
<?php logmessage("Loading page Consumer-Speedtest.php");?>
<!-- InstanceEndEditable --> 
</head>
 

<body>
<p>&nbsp;</p>
<div class="container"> 
  
  <header>
    <div id="titlebar">
     	<center>
	 <span id="title"><h1>Photo Frame Router</h1></span>
    	</center>
	</div>
  </header>
<p>&nbsp;</p>

  <div class="sidebar1">
    <nav>
      <div id='cssmenu'>
      <ul>
         <li class='active' id="Home"><a href='home.php'><span>Home</span></a></li>
         <li class='has-sub' id="Configuration"><a href='#'><span>Configuration</span></a>
            <ul id="ConfigurationUl">
               <li><a href='Configuration-DateTime.php'><span>Date/Time</span></a></li>
               <li><a href='Configuration-OperationMode.php'><span>Operation Mode</span></a></li>
               <li><a href='Configuration-NetworkSettings.php'><span>Network Settings</span></a></li>
               <li><a href='Configuration-WirelessSettings.php'><span>Wireless Settings</span></a></li>
            </ul>
         </li>
        <li class='has-sub' id="Consumer"><a href='#'><span>Consumer</span></a>
            <ul id="ConsumerUl">
               <li><a href='Consumer-Speedtest.php'><span>Speedtest</span></a></li>
               <li><a href='Consumer-DeviceList.php'><span>Who's On My Network</span></a></li>
               <li><a href='Consumer-CustomerSupport.php'><span>Customer Support</span></a></li>
               <li class='last'><a href='Consumer-Insight.php'><span>Consumer Insight</span></a></li>
            </ul>
         </li>
        <li class='has-sub' id="Advanced"><a href='#'><span>Advanced</span></a>
            <ul id="AdvancedUl">
               <li><a href='Advanced-PortForwarding.php'><span>Port Forwarding</span></a></li>
               <li><a href='Advanced-CaptivePortal.php'><span>Captive Portal</span></a></li>
               <li><a href='Advanced-NetworkFilter.php'><span>Network Filter</span></a></li>
               <li><a href='Advanced-WebFilter.php'><span>Web Filter</span></a></li>
               <li><a href='Advanced-VpnServer.php'><span>VPN Server</span></a></li>
               <li class='last'><a href='Advanced-Wireless.php'><span>Advanced Wireless</span></a></li>
            </ul>
         </li>
        <li class='has-sub' id="Maintenance"><a href='#'><span>Maintenance</span></a>
            <ul id="MaintenanceUl">
              <li><a href='Maintenance-ChangePassword.php'><span>Password</span></a></li>
               <li><a href='Maintenance-BackupConfig.php'><span>Backup Config</span></a></li>
               <li><a href='Maintenance-RestoreConfig.php'><span>Restore Config</span></a></li>
               <li><a href='Maintenance-FactoryReset.php'><span>Factory Reset</span></a></li>
               <li class='last'><a href='Maintenance-Reboot.php'><span>Reboot</span></a></li>
            </ul>
         </li>

         <li class='has-sub' id="Logs"><a href='#'><span>Logs</span></a>
            <ul id="LogsUl">
               <li><a href='Logs-Routerlog.php'><span>Routerlog</span></a></li>
               <li><a href='Logs-Dmesg.php'><span>Dmesg</span></a></li>
               <li><a href='Logs-Syslog.php'><span>Syslog</span></a></li>
               <li class='last'><a href='Logs-Messages.php'><span>Messages</span></a></li>
            </ul>
         </li>
         <li id="Logs"><a href='logout.php'><span>Log out</span></a>
         </li>
      </ul>
      </div>
    </nav>
  </div><!-- end .sidebar1 -->
  <!-- InstanceBeginEditable name="MenuExpander" -->
  <script>
	$('#Home').removeClass('active');
	$('#Consumer').addClass('active');
	$('#ConsumerUl').show();
  </script>
  <!-- InstanceEndEditable -->
  
  <article class="content">
    <!-- InstanceBeginEditable name="article" -->
  <div id="ContentTitle">
  </div>
 <iframe width="100%" height="650px" frameborder="0" src="http://dtech.speedtestcustom.com"></iframe>
	<p>&nbsp;</p>      
  <div>
        

          <tr>

            <td>&nbsp;</td>
          </tr>
          <tr>
           
          </tr>
          <tr>
           
          </tr>
        </table>
      </fieldset>
    </form>
  </div>
    <!-- InstanceEndEditable -->
  </article><!-- end .content -->

  <aside>
  <!-- InstanceBeginEditable name="aside" -->
  
  
  
  <!-- InstanceEndEditable -->
  </aside>

<p>&nbsp;</p>
<footer>         
        <p style="font-size:75%;">Copyright Disguised Technologies ©<script>document.write(new Date().getFullYear());</script> All rights reserved</p>
</footer>
</div>
</body>
<!-- InstanceEnd --></html>
