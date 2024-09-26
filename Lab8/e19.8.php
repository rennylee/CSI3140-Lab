<?php

function validateEmail($email) {
    $pattern = '/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/';
    if(preg_match($pattern, $email)) {
        return true;
    } else {
        return false;
    }
}

$testEmails = [
    'hello.email@example.com',
    'invalid@example',
    'a.valid.email@example.co.uk',
    'invalidemail@.com',
    '@gmail.com',
    'hello.com',
    'gmail@domain.c',
];

foreach($testEmails as $email) {
    if(validateEmail($email)) {
        echo "The email address '$email' is valid.\n";
    } else {
        echo "The email address '$email' is invalid.\n";
    }
}
?>
