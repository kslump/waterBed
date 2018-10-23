$fn=128;
use <../lib/lsdlib.scad>
use <../lib/threads.scad>
use <../lib/gears.scad>

rotate([180,0,0]) difference() {
   union() {
      translate([0,0,0]) metric_thread (
         diameter=62, pitch=2, length=13, internal=false, n_starts=1,
         thread_size=-1, groove=false, square=false, rectangle=0,
         angle=30, taper=0, leadin=1, leadfac=1.0);

      translate([0,0,13]) cylinder(h=2,  d=68, center=false);
   }

   translate([0,0,-0.01]) cylinder(h=13.02, d=55, center=false);
   translate([0,0,   13]) cylinder(h=2.01,  d=49, center=false);
}
