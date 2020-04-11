
use<../parts/clip.scad>;

spread = 46;

translate([spread/2,0,0]) clip();
mirror([1,0,0]){
  translate([spread/2, 0,0]) clip();
}
