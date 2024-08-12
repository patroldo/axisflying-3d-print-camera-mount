
//difference must be 5.8(-2.7 and 3.1 are default)
// topHoleMarginBottom = -2.7;
// bottomHoleMarginBottom = 3.1;
topHoleMarginBottom = -0.4;
bottomHoleMarginBottom = 4.7;

bottomHoleMarginBottomMicro = 2.15;
// camera_mounting_bar_micro();
// camera_mounting_bar_mini();


module camera_mounting_bar_mini() {
    difference() {
      translate([-11.5, -4, -2]) { cube([25,18,3.5], false); }
      union() {

          //top half-hole ----------------
          translate([topHoleMarginBottom + 0.35,-2,4.8]) {
              cylinder(r=2.45, h=10, center=true, $fn=100);
          }

          translate([topHoleMarginBottom - 0.35,0,4.8]) {
              cylinder(r=2.45, h=10, center=true, $fn=100);
          }

          translate([topHoleMarginBottom,-1,4.8]) {
              cylinder(r=2.45, h=10, center=true, $fn=100);
          }
          // ------------------------------------
          translate([topHoleMarginBottom + 0.35,-2,1.8]) {
              cylinder(r=1.2, h=10, center=true, $fn=100);
          }

          translate([topHoleMarginBottom - 0.35,0,1.8]) {
              cylinder(r=1.2, h=10, center=true, $fn=100);
          }

          translate([topHoleMarginBottom,-1,1.8]) {
              cylinder(r=1.2, h=10, center=true, $fn=100);
          }

          translate([topHoleMarginBottom,-1,-1]) rotate([0,0,20]) {
              cube([2.4,2.1,4], true);
          }
          translate([topHoleMarginBottom,-1,1]) rotate([0,0,20]) {
              cube([4.9,2.1,2.4], true);
          }

          //bottom half-hole ----------------
          translate([bottomHoleMarginBottom,1.5,4.8]) {
              cylinder(r=2.45, h=10, center=true, $fn=100);
          }

          //bottom screw-hole ----------------
          translate([bottomHoleMarginBottom,1.5,1.8]) {
              cylinder(r=1.35, h=10, center=true, $fn=100);
          }

      }
  }
}

module camera_mounting_bar_micro() {
    difference() {
      translate([-11.5, -4, -2]) cube([25,18,3.5], false);
      union() {

          //bottom half-hole ----------------
          translate([bottomHoleMarginBottomMicro,0.8,4.8]) {
              cylinder(r=2.45, h=10, center=true, $fn=100);
          }

          //bottom screw-hole ----------------
          translate([bottomHoleMarginBottomMicro,0.8,1.8]) {
              cylinder(r=1.35, h=10, center=true, $fn=100);
          }

      }
  }
}