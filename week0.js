// Task 1: Repeating Numbers
var repeatNumbers = function(data) {
  // Put your solution here
  var result = "";
  for (var i = 0; i < data.length; i++) {
    var curr = data[i];
    for (var j = 0; j < curr[1]; j++)
      {
        result += curr[0].toString();
      }
      if (i+1 < data.length) {
          result += ", ";
      }
  }
   console.log(result)
};

console.log(repeatNumbers([[1, 10]]));
console.log(repeatNumbers([[1, 2], [2, 3]]));
console.log(repeatNumbers([[10, 4], [34, 6], [92, 2]]));

// Task 2: Conditional Sums
var conditionalSum = function(values, condition) {
  // Your code here
  var result = 0;
  if (condition == "even") {
    for (var i = 0; i < values.length; i++) {
      if (values[i] % 2 == 0) {
        result += values[i];
      }
    }
  }
  else if (condition == "odd") {
    for (var j = 0; j < values.length; j++) {
      if (values[j] % 2 != 0) {
        result += values[j];
      }
    }
  }
  console.log(result);
}

console.log(conditionalSum([1, 2, 3, 4, 5], "even"));
console.log(conditionalSum([1, 2, 3, 4, 5], "odd"));
console.log(conditionalSum([13, 88, 12, 44, 99], "even"));
console.log(conditionalSum([], "odd"));


// Task 3: Talking Calendar
var talkingCalendar = function(date) {
  // Your code here
  var result = "";

  // creating a list of months
  var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "Octobr", "November", "December"];

  // parsing the date
  var parts = date.split('/');
  var date = parts[2];
  var month = parseInt(parts[1] - 1);
  var year = parts[0]; 

  // assigning the right suffix to dates 
  if (date == '01') {
    date = parseInt(date) + "st";
  }
  else if (date[date.length-1] == '2') {
    date = parseInt(date) + "nd";
  }
  else if (date[date.length-1] == '3') {
    date = parseInt(date) + "rd";
  }
  else {
    date = parseInt(date) + "th";
  } 

  // construct final date
  result = months[month] + " " + date + ", " + year;

  console.log(result);

};

console.log(talkingCalendar("2017/12/02"));
console.log(talkingCalendar("2007/11/11"));
console.log(talkingCalendar("1987/08/24"));


// Task 4: Challenge Calculator
var calculateChange = function(total, cash) {
  // Your code here
  bank = {
    "twentyDollars": 2000,
    "tenDollars": 1000,
    "fiveDollars": 500,
    "twoDollars": 200,
    "dollar": 100,
    "quarter": 25,
    "dime": 10,
    "nickel": 5,
    "penny": 1
  } 
  var result = {};
  var change = cash - total;
  for (var money in bank) {
    if (change != 0) {
      var currResult = Math.floor(change / bank[money]);
      if(currResult != 0) {
        result[money] = currResult;
      }
      change -= bank[money] * currResult ;
      }
    }
    console.log(result);     
  }

console.log(calculateChange(1787, 2000));
console.log(calculateChange(2623, 4000));
console.log(calculateChange(501, 1000));
    
