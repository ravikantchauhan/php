<?php

$serverName = "192.168.1.16,1433"; //serverName\instanceName//or ip,port

// Since UID and PWD are not specified in the $connectionInfo array,
// The connection will be attempted using Windows Authentication.
$connectionInfo = array( "Database"=>"Testdb","UID"=>"sa","PWD"=>"Password");
$conn = sqlsrv_connect( $serverName, $connectionInfo);

if( $conn ) {
    echo "Connection established.<br />";
}else{
    echo "Connection could not be established.<br />";
	 echo "<pre>";
    die( print_r( sqlsrv_errors(), true));
}
?>
