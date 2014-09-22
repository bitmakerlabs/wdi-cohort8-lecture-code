var fs = require('fs');

var filePath = './node.txt';

fs.readFile(filePath, function(err, data) {
  if (err)
    return console.log("There was an error: ", err);

  console.log(data.toString());
});