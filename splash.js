const DESCRIPTION = "The awesome power of command line is finally releaved.";
const COPYRIGHT = "Developed with JavaScript and ♥ by Ionică Bizău";

var ImageToAscii = require("image-to-ascii")
  , Overlap = require("overlap")
  , myImage = new ImageToAscii ({
        resize: {
            width:  "100%"
          , height: "90%"
        }
      , multiplyWidth: 1
      , colored: true
    })
  ;

myImage.convert("../resources/splash/tmuxos.png", function(err, converted) {
    if (err) { throw err; }
    console.log(Overlap({
        who: Overlap({
            who: converted.trim()
          , with: DESCRIPTION
          , where: {
                x: process.stdout.columns / 2 - DESCRIPTION.length / 2
              , y: converted.split("\n").length - 1
            }
        })
      , with: COPYRIGHT
      , where: {
            x: process.stdout.columns / 2 - COPYRIGHT.length / 2
          , y: converted.split("\n").length
        }
    }));
});
