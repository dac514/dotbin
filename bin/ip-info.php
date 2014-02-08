#!/usr/bin/php
<?php

$ip = @$argv[1];
$ip = filter_var($ip, FILTER_VALIDATE_IP);

if ($ip) print_r(geoip_record_by_name($ip));
else echo "Invalid IP! \n";
