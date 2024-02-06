var numbers = [];
var largest = -Infinity;
var smallest = -Infinity;
var size = 5;

for (var i=0; i<size; i++) {
    numberr[i] = prompt("Enter the numers u want:");
}

for (var j=0; j<size; j++) {
    if (numbers[j]> largest) {
        largest = numbers[j];
    }
}

for (var k=0; k<size; k++) {
    if (numbers[k]< smallest) {
        smallest = numbers[k];
    }
}

console.log("Five Integers are: "+numbers)
console.log("Largest integer is: "+largest);
console.log("Smallest Integer is: "+smallest);