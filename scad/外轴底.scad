$fn=64;
use <../lib/lsdlib.scad>
use <../lib/threads.scad>
use <../lib/gears.scad>

sockc = 30.55;
lwh = 16;
difference() {
   union() {
      translate([0,0,0]) cylinder(h=2, d=68, center=false);
      translate([0,0,2]) metric_thread (
         diameter=30, pitch=2, length=lwh, internal=false, n_starts=1,
         thread_size=-1, groove=false, square=false, rectangle=0,
         angle=30, taper=0, leadin=1, leadfac=1.0);
   }
   
   translate([0,0,-0.01]) cylinder(h=2.02+lwh, d=11, center=false);
   //translate([0,0,-0.01]) cylinder(h=1.02,  d=49, center=false);
   //translate([0,0, 1.00]) cylinder(h=13.01, d=55.1, center=false);
   
   for (xy = [[0,-sockc], [0,sockc], [sockc,0], [-sockc,0]]) {
      translate([xy.x, xy.y, -0.01]) cylinder(h=3.02, d=3.2, center=false);
   }

}
