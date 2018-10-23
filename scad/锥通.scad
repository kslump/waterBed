$fn=64;
use <../../SCadlib/lsdlib.scad>
use <../../SCadlib/threads.scad>
use <../../SCadlib/gears.scad>

difference() {
	union() {
    translate([0,0,-14]) metric_thread (
      diameter=32.8, pitch=2.309, length=14, internal=false, n_starts=1,
      thread_size=-1, groove=false, square=false, rectangle=0,
      angle=35, taper=0, leadin=3, leadfac=1.0);
    difference() {
      cylinder(h=26,d=30);
      translate([0,0,16]) metric_thread (
        diameter=21.4, pitch=1.814, length=10, internal=true, n_starts=1,
        thread_size=-1, groove=false, square=false, rectangle=0,
        angle=35, taper=0, leadin=0, leadfac=1.0);
    }
    translate([0,0,16]) cylinder(h=12,d=16);
	}

  translate([0,0,-14]) cylinder(h=42,d1=26, d2=10.3);
}
