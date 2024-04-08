<?php

$pattern = "/^A[0-9A-Za-z]{3}[Bb]+\d{2}$/";

$testStrings = [
    'A1B2B34', 
    'B1B2B34', 
    'A1B2BQ4', 
    'A1B2b34', 
    'A1B2Bbb34', 
];

foreach ($testStrings as $testString) {
    if (preg_match($pattern, $testString)) {
        echo "The string '{$testString}' is valid.\n";
    } else {
        echo "The string '{$testString}' is invalid.\n";
    }
}
