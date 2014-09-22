var _ = require('underscore');

var myArray = [1, 2, 3];

_.each(myArray, function(item) {
  console.log(item);
});

console.log(_.last(myArray));