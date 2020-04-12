use<./clip.scad>

clearance = 0.2;
function prongWidth() = 4;
function spanZ() = 2;
module span() {
  color("darkorchid")
  difference() {
    union(){
      prongLength = 16;
      prongSpacing = nutY()+.2;
      cube([prongLength, prongWidth()-clearance/2, spanZ()]);
      translate([0, prongSpacing+prongWidth()-clearance/2, 0]) cube([prongLength, prongWidth()-clearance/2, spanZ()]);
      straightLength = 2 + nutX() + 43 ;
      translate([-straightLength, 0, 0]) cube([straightLength, prongWidth()*2+prongSpacing-clearance, spanZ()]);
    };
    translate(-[nutX() + 43 + clearance/2, -prongWidth() + clearance/2, .5]) cube([nutX()+clearance, nutY()+clearance, 3]);
  }
}
span();
