#!/usr/bin/php
<?php

declare(strict_types=1);

$input_file = @$argv[1];
$file = realpath($input_file);
if (!$file) {
    die("Error: The file $input_file was not found.\n");
}

// Base64 encode and put it next to file in the same directory with a .base64.txt extension
$p = pathinfo($file);
$output_path = $p['dirname'] . '/' . $p['filename'] . '.base64.txt';
$output_contents = base64_encode(file_get_contents($input_file));
file_put_contents($output_path, $output_contents);

// Copy to clipboard (CMD+v)
shell_exec('pbcopy < ' . escapeshellarg($output_path));
