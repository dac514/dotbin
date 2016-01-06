#!/usr/bin/php
<?php

ini_set('display_errors',1);
ini_set('display_startup_errors',1);
error_reporting(-1);

$ip = @$argv[1];
$ip = filter_var($ip, FILTER_VALIDATE_IP);

if ($ip) print_r(geoip_record_by_name($ip));
else echo "Invalid IP! \n";
