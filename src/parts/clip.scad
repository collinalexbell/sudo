
function nutY() = 12;
function nutX() = 15;

module clip() {
  nutX = nutX();
  nutZ = 12;
  cube([nutX, nutY(), nutZ]);

  module corner(xyz) { 
    lip = 1.3;
    height = 8;
    x1 = xyz[0];
    y1 = 1;

    translate([0,0,xyz[2]]) {
      cube([x1, y1, height]); 
      translate([0, 0, height]) {
        cube([x1, y1+lip, 1]);
      }
    }

    x2 = 1;
    y2 = xyz[1];

    translate([xyz[0]-x2, 0, xyz[2]]) {
      cube([x2, y2, height]);
      translate([-lip,0,height]) {
        cube([x2+lip, y2, 1]);
      }
    }
  };

  module cubeWithCorner(xyz) {
    cube(xyz);
    corner(xyz);
  }

  ySup = 80;
  translate([0, -ySup/2 + nutY()/2, nutZ]){
    cubeWithCorner([15, ySup, 2]);
  }
}

clip();
