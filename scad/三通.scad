$fn=64;

use <../../SCadlib/threads.scad>

module xluowen() {
  metric_thread (
    diameter=10, pitch=1, length=10, internal=true, n_starts=1,
    thread_size=-1, groove=false, square=false, rectangle=0,
    angle=30, taper=0, leadin=0, leadfac=1.0);
}

module dluowen() {
  metric_thread (
    diameter=21.0, pitch=1.814, length=10, internal=true, n_starts=1,
    thread_size=-1, groove=false, square=false, rectangle=0,
    angle=35, taper=0, leadin=0, leadfac=1.0);
}

// module xluowen() {
//   cylinder(h=10, d=10, center=false);
// }

// module dluowen() {
//   cylinder(h=10, d=21, center=false);
// }

difference() {
	union() {
    translate([-15,-32,0]) cube([5,64,50]);
    translate([ 20,-20,5]) cube([10,40,40]);
		difference() {
    translate([-10,-25,0]) cube([40,50,50]);
	  translate([10, 20, 25]) rotate([90, 0, 0])
      cylinder(h=40, d=40, center=false);
    }
	}

	translate([30,  0, 15.5]) rotate([0, 270, 0]) dluowen();
	translate([30,-12, 35]) rotate([0, 270, 0]) xluowen();
	translate([30, 12, 35]) rotate([0, 270, 0]) xluowen();

	for (yz = [[-28.5,15], [28.5,15], [-28.5,35], [28.5,35]]) {
		translate([-16, yz.x, yz.y]) rotate([0, 90, 0])
			cylinder(h=12, d=4.5, center=false);
	}
}
