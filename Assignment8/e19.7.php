<?php
$states = "Mississippi Alabama Texas Massachusetts Kansas";
$states = explode(" ", $states);
$statesArray = [];
// a)
foreach ($states as $state) {
    if (preg_match('/xas$/',($state))) {
        $statesArray[0] = ($state);
    }
}

//b)
foreach ($states as $state) {
    if (preg_match('/^k.*s$/i',($state))) {
        $statesArray[1] = ($state);
    }
}

//c)
foreach ($states as $state) {
    if (preg_match('/^M.*s$/',($state))) {
        $statesArray[2] = ($state);
    }
}

//d)
foreach ($states as $state) {
    if (preg_match('/a$/',($state))) {
        $statesArray[3] = ($state);
    }
}
//e)
foreach ($states as $state) {
    if (preg_match('/^M/',($state))) {
        $statesArray[4] = ($state);
    }
}

//f)
var_dump($statesArray);


?>