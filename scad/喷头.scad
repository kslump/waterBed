$fn=64;
use <../../SCadlib/threads.scad>

module xluowen() {
  metric_thread (
    diameter=10.2, pitch=1, length=8, internal=true, n_starts=1,
    thread_size=-1, groove=false, square=false, rectangle=0,
    angle=30, taper=0, leadin=0, leadfac=1.0);
}

module dluowen() {
  metric_thread (
    diameter=13.4, pitch=1.337, length=8, internal=true, n_starts=1,
    thread_size=-1, groove=false, square=false, rectangle=0,
    angle=35, taper=0, leadin=0, leadfac=1.0);
}

// module luowen() {
//   cylinder(h=8, d=10, center=false);
// }

difference() {
	union() {
	  translate([-10,-20,0]) cube([5,40,40]);  // 左块
		translate([-5,-10,0]) cube([25,20,40]); // 中块
	}
  zhongk();

  translate([0,0,32]) xluowen();
  translate([12,0,10]) rotate([0,90,0])dluowen();

	for (yz = [[-15,10], [15,10], [-15,30], [15,30]]) {
		translate([-11, yz.x, yz.y]) rotate([0, 90, 0])
			cylinder(h=12, d=4.5, center=false);
	}
}

module zhongk() {
  translate([6,0,16]) {
    rotate([0,90,0])
    rotate([270,0,0])
    rotate_extrude(angle=90, convexity=10) translate([6, 0]) circle(d=9.6);
  }
  translate([0,0,16]) cylinder(d1=9.6,d2=6,h=16);
  translate([0,0,32]) cylinder(d=6,h=10);
  translate([6,0,10]) rotate([0,90,0]) cylinder(d=9.6,h=30);
}
