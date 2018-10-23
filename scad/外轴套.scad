$fn=64;
use <../lib/lsdlib.scad>
use <../lib/threads.scad>
use <../lib/gears.scad>
use <../lib/springs.scad>

lwh = 16;

rotate([180,0,0])
difference() {
   union() {
      translate([0,0,-14]) cylinder(h=14, d=30, center=false);
      translate([0,0,0]) cylinder(h=28.99, d=30, center=false);
   }

   union() {
      spring(Windings = 5, R = 10, r=1, h = 20, slices = 50);
      rotate([0,90,0])cylinder(h=11, d=2, center=false);
      translate([0,0,20])rotate([0,90,0])cylinder(h=11, d=2, center=false);
      translate([0,0,19]) cylinder(h=10, d1=2, d2=1,center=false);
   }

   translate([0,0,-4]) cylinder(h=8, d=10, center=false);
   
   translate([0,0,-14]) metric_thread (
      diameter=21.6, pitch=1.814, length=10, internal=true, n_starts=1,
      thread_size=-1, groove=false, square=false, rectangle=0,
      angle=35, taper=0, leadin=0, leadfac=1.0);
   
   //translate([0,0,-0.01]) cylinder(h=2.02+lwh, d=11, center=false);
   
}
