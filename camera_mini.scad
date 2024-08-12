module camera_mini() {

    cube([22,22,22], true);

    translate([0,7.7,-3])rotate([0,90,0]) cylinder(d1=2, d2=2, center=true, h=24,$fn=100);

    translate([0,7.7,2])rotate([0,90,0]) cylinder(d1=2, d2=2, center=true, h=24,$fn=100);
}

camera_mini();