<?php
function validateEmailAddress($email) {
    $pattern = "/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/";
    if (preg_match($pattern, $email)) {
        echo "The e-mail address '$email' is valid.\n";
    } else {
        echo "The e-mail address '$email' is invalid.\n";
    }
}

// Test the function with both valid and invalid e-mail addresses
validateEmailAddress("example@example.com"); // Valid
validateEmailAddress("user@domain.com"); // Valid
validateEmailAddress("user.name@domain.com"); // Valid
validateEmailAddress("user_name@domain.com"); // Valid
validateEmailAddress("user@domain.co.uk"); // Valid
validateEmailAddress("user@domain"); // Invalid
validateEmailAddress("user@.com"); // Invalid
validateEmailAddress("user@domain..com"); // Invalid
validateEmailAddress("@domain.com"); // Invalid
?>
