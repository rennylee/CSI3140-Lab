let num1 = Number(prompt("First number:"));
let num2 = Number(prompt("Second number:"));
let num3 = Number(prompt("Third number:"));
alert(
    "Sum:" + (num1 + num2 + num3) + "\n" +
    "Average:" + ((num1 + num2 + num3)/3) + "\n" +
    "Smallest:" + Math.min(num1,num2,num3) + "\n" +
    "Largest:" + Math.max(num1,num2,num3) + "\n"
 )