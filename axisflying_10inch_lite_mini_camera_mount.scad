// translate([0,0,26]) {
    // import("/home/yurii/Downloads/Mark_4_Mini_camera_mount_v10.stl");
// import("/home/yurii/Documents/models/stl/18mm_36mm.stl");
// }

// translate([60.5,-12,3]) {
// translate([8,-12,3]) {
//   cube([19,19,19]);
// }

include <side_of_camera_mount.scad>

widthOfBaseConnector = 5.25;
heightOfHoleMount = 25;
heightOfBase = 2.8;
mountHoleDiameter = 5.45;


// translate([18,-16.75,9.5]) rotate([20, 0, 0])  {
//   camera_mini();
// }
 

difference() {
    
    union() {
        translate([0,0,0]) {
          difference() {    
            union() {
              difference() {
                translate([-4.23,-13.75,0]) color("red") cube([10.7,13,3], false);
                translate([-6.8,-12.75,1]) rotate([0,0,28.5])cube([16.2,21,5], true);
              }
              cylinder(h=heightOfHoleMount, d1=mountHoleDiameter + 3, d2=mountHoleDiameter + 3, center=false, $fn = 100);
              translate([0,-1,0]) { cube([19,widthOfBaseConnector,heightOfBase], false); }
              cube([6.5,4.25,25], false);
              translate([4.5, -9.75,13.5]) rotate([0,90,0]) mirror([0,0,1]) {
                camera_mounting_bar_mini();
              }
            }
            translate([0,0,-0.3]) { cylinder(h=heightOfHoleMount + 1, d1=mountHoleDiameter, d2=mountHoleDiameter, center=false, $fn = 100); }
          }
        }


        translate([36,0,0]) {
          difference() {
            union() {
              mirror([1,0,0]) difference() {
                translate([-4.23,-13.75,0]) color("red") cube([10.7,13,3], false);
                translate([-6.8,-12.75,1]) rotate([0,0,28.5])cube([16.2,21,5], true);
              }
              cylinder(h=heightOfHoleMount, d1=mountHoleDiameter + 3, d2=mountHoleDiameter + 3, center=false, $fn = 100);
              translate([-18,-1,0]) { 
                cube([18,widthOfBaseConnector,heightOfBase], false);
              }
              translate([-6.6,0,0]) { cube([6.5,4.25,25], false); }
              translate([-4.6, -9.75,13.5]) rotate([0,90,0]) {
                camera_mounting_bar_mini();
              }
            }
            translate([0,0,-0.3]) { cylinder(h=heightOfHoleMount + 1, d1=mountHoleDiameter, d2=mountHoleDiameter, center=false, $fn = 100); }
          }
         }

    }
}

module camera_mini() {

    cube([22,22,22], true);

    translate([0,7.7,-3])rotate([0,90,0]) cylinder(d1=2, d2=2, center=true, h=24,$fn=100);

    translate([0,7.7,2])rotate([0,90,0]) cylinder(d1=2, d2=2, center=true, h=24,$fn=100);
}
