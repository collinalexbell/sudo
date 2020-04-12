
use<../parts/clip.scad>;
use<../parts/span.scad>;

spread = 46;

color("darkcyan") {
  translate([spread/2,0,0]) clip();
  mirror([1,0,0]){
    translate([spread/2, 0,0]) clip();
  }
}

translate([20, -prongWidth(), nutY()-2]) span();
