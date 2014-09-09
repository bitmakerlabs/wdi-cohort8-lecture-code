// Flow control

var time = 5;
var result = "";

if (time < 10) {
  result = "Good morning!";
} else if (time > 20) {
  result = "Good night!";
} else {
  result = "Good day!";
}

var today = new Date().getDay();
var dayInWords;

switch(today) {
  case 0:
    dayInWords = "Sunday";
    break;

  case 1:
    dayInWords = "Monday";
    break;

  case 2:
    dayInWords = "Tuesday";
    break;
}

document.write("<h2>Today is " + dayInWords + "</h2>");


// Looping

for (var i = 0; i <= 20; i++) {
  if (i % 2 === 0) {
    console.log(i + ' is even');
  } else {
    console.log(i + ' is odd');
  }
}

var num = 1;
while (num <= 10) {
  console.log(num);
  num++;
}

num = 1;
do {
  console.log(num);
  num++;
} while (num <= 10)


// Anonymous vs. named

myFunction();

// Anonymous functions that are assigned to a variable won't
// work before the definition. Named functions work wherever.
myAnonFunction();

function myFunction() {
  console.log("Hello world");
}

var myAnonFunction = function() {
  console.log("Hello world from anon");
}


// JavaScript requires explicit return. Otherwise you'll get undefined.
function square(number) {
  return number * number;
}

console.log(square(4));


// Invoking a function
function myFunction() {
 return "Hello world";
}

// Needs parentheses always!
console.log(myFunction());

// This won't invoke the function, it will reference it!
console.log(myFunction);



// Functions with arguments
function tellFortune(jobTitle, location, partner, numKids) {
  var future = "You will be a " + jobTitle + " in " + location + " and married to " + partner + " with " + numKids + " children.";
  return future;
}

// Calling with all arguments
console.log(tellFortune("CEO", "Albuquerque", "Bertha", 15));

// Calling with some arguments - doesn't throw an error
console.log(tellFortune("CEO", "Albuquerque"));
