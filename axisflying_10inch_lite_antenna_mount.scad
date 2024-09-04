widthOfBaseConnector = 5.25;
heightOfHoleMount = 25;
heightOfBase = 2.8;
mountHoleDiameter = 5.45;

k = 9.48 / 25.05;
val = 28.3;


difference() {
    
    union() {
        translate([-17,0,0]) {
          difference() {    
            union() {
              cylinder(h=heightOfHoleMount, d1=mountHoleDiameter + 3, d2=mountHoleDiameter + 3, center=false, $fn = 100);
              translate([0,0,heightOfHoleMount - 4]) {
                scale([1,0.845,1]) pieSlice(-90,90,(mountHoleDiameter + 4.55) / 2, 4);
                cube([5,15,4]);
                
                translate([0,15,0]) rotate([27,0,0]) cube([17,9,3]);
                
                translate([0,15,0]) rotate([27,0,0]) cube([5,17,7]);
                translate([0,9.9,4]) cube([5,5,3.8], false);
                translate([2.50,val,k * val]) rotate([0,90,0]) cylinder(d1=7, d2=7, h=5, center=true, $fn=100);
                translate([-4,0.9,0]) rotate([0,0,-19.8]) cube([4,15,4], false);
              }
            }
            translate([0,0,-0.3]) { cylinder(h=heightOfHoleMount + 1, d1=mountHoleDiameter, d2=mountHoleDiameter, center=false, $fn = 100); }
          }
        }


        translate([17,0,0]) {
          difference() {
            union() {
              mirror([1,0,0]) {
                cylinder(h=heightOfHoleMount, d1=mountHoleDiameter + 3, d2=mountHoleDiameter + 3, center=false, $fn = 100);
                translate([0,0,heightOfHoleMount - 4]) {
                  scale([1,0.845,1]) pieSlice(-90,90,(mountHoleDiameter + 4.55) / 2, 4);
                  cube([5,15,4]);
                  
                  translate([0,15,0]) rotate([27,0,0]) cube([17,9,3]);
                  
                  translate([0,15,0]) rotate([27,0,0]) cube([5,17,7]);
                  translate([0,9.9,4]) cube([5,5,3.8], false);
                  translate([2.50,val,k * val]) rotate([0,90,0]) cylinder(d1=7, d2=7, h=5, center=true, $fn=100);
                  translate([-4,0.9,0]) rotate([0,0,-19.8]) cube([4,15,4], false);
                }
              }
            }
            translate([0,0,-0.3]) { cylinder(h=heightOfHoleMount + 1, d1=mountHoleDiameter, d2=mountHoleDiameter, center=false, $fn = 100); }
          }
         }

    }
    union() {
      translate([0,0,heightOfHoleMount - 4]) {
        color("blue") translate([0,val,k * val]) rotate([0,90,0]) cylinder(d1=5, d2=5, h=35, center=true, $fn=100);
        color("red") translate([-17.5,12,4]) rotate([45,0,0]) cube([35,8,5], false);
        color("green") translate([0,9.5,4 + 2.5]) cube([35,5,5], true);
      }
    }
}


module pieSlice(a1, a2, r, h) {
  // a:angle, r:radius, h:height
  
  rotate([0,0,a1]) rotate_extrude(angle=(a2 - a1), $fn=100) square([r,h]);
}
