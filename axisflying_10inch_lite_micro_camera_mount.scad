// translate([0,0,26]) {
    // import("/home/yurii/Downloads/Mark_4_Mini_camera_mount_v10.stl");
// import("/home/yurii/Documents/models/stl/18mm_36mm.stl");
// }

// translate([60.5,-12,3]) {
// translate([8.7,-12,0]) {
//   rotate([30,0,0]) cube([19,19,19]);
// }

include <side_of_camera_mount.scad>

widthOfBaseConnector = 5.25;
heightOfHoleMount = 25;
heightOfBase = 2.8;
mountHoleDiameter = 5.45;

// translate([31.95,0,47.5]) {
//   rotate([0,90,-90]) {
//     import("/home/yurii/Downloads/Micro_Camera_Mount_v0.4.stl");
//   }
// }

diff_cam_loc = 1.83;

difference() {
    
    union() {
        translate([0,0,0]) {
          difference() {    
            union() {
              difference() {
                translate([-4.23,-13.75,0]) color("red") cube([12.6,13,3], false);
                translate([-4.8,-12.75,1]) rotate([0,0,34.8])cube([14.85,21,5], true);
              }
              cylinder(h=heightOfHoleMount, d1=mountHoleDiameter + 3, d2=mountHoleDiameter + 3, center=false, $fn = 100);
              translate([0,-1,0]) { cube([19,widthOfBaseConnector,heightOfBase], false); }
              cube([6.5,4.25,25], false);
              translate([0,-4.22,0]) {
                cube([5,5,25], false);
              }
              translate([4.6 + diff_cam_loc, -9.75,13.5]) rotate([0,90,0]) mirror([0,0,1]) {
                camera_mounting_bar_micro();
              }
            }
            translate([0,0,-0.3]) { cylinder(h=heightOfHoleMount + 1, d1=mountHoleDiameter, d2=mountHoleDiameter, center=false, $fn = 100); }
          }
        }


        translate([36,0,0]) {
          difference() {
            union() {
              mirror([1,0,0]) difference() {
                translate([-4.23,-13.75,0]) color("red") cube([12.6,13,3], false);
                translate([-4.8,-12.75,1]) rotate([0,0,34.8])cube([14.85,21,5], true);
              }
              cylinder(h=heightOfHoleMount, d1=mountHoleDiameter + 3, d2=mountHoleDiameter + 3, center=false, $fn = 100);
              translate([-18,-1,0]) { 
                cube([18,widthOfBaseConnector,heightOfBase], false);
              }
              translate([-6.6,0,0]) { cube([6.5,4.25,25], false); }
              translate([-5,-4.22,0]) {
                cube([5,5,25], false);
              }
              translate([-4.6 - diff_cam_loc, -9.75,13.5]) rotate([0,90,0]) {
                camera_mounting_bar_micro();
              }
            }
            translate([0,0,-0.3]) { cylinder(h=heightOfHoleMount + 1, d1=mountHoleDiameter, d2=mountHoleDiameter, center=false, $fn = 100); }
          }
         }

    }
}