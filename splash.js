const DESCRIPTION = "The awesome power of command line is finally releaved.";

var ImageToAscii = require("image-to-ascii")
  , myImage = new ImageToAscii ({
        resize: {
            width:  "100%"
        }
      , colored: true
    })
  ;

myImage.convert("../resources/splash/tmuxos.png", function(err, converted) {
    console.log(err || converted);
});
