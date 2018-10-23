$fn=64;
use <../lib/lsdlib.scad>
use <../lib/threads.scad>
use <../lib/gears.scad>

sockx = 21.6;
socky = 21.6;
sockc = 30.55;

difference() {
   union() {
      difference() {
         union() {
            translate([0,0,0]) cylinder(h=4.6,  d=68, center=false);
            translate([0,0,4.6]) cylinder(h=13,  d=68, center=false);
         }
         translate([0,0,2]) cylinder(h=2.7,  d=49, center=false);
         translate([0,0,4.6]) metric_thread (
            diameter=63.0, pitch=2, length=13, internal=true, n_starts=1,
            thread_size=-1, groove=false, square=false, rectangle=0,
            angle=30, taper=0, leadin=0, leadfac=1.0);
         //translate([0,0,4.6]) cylinder(h=13.01,  d=62, center=false);
      }
      translate([0,0,2]) cylinder(h=20,  d=10, center=false);
      translate([0,0,-16]) metric_thread (
         diameter=30, pitch=2, length=16, internal=false, n_starts=1,
         thread_size=-1, groove=false, square=false, rectangle=0,
         angle=30, taper=0, leadin=1, leadfac=1.0);

   }
   translate([0,0,-16.01]) cylinder(h=12,  d1=20, d2=8, center=false);
   translate([0,0,-17]) cylinder(h=40,  d=8, center=false);
   
   //translate([0,0, 3.00]) cylinder(h=13.01, d=55, center=false);
   
   /*for (xy = [[sockx,socky], [sockx,-socky], [-sockx,socky], [-sockx,-socky]]) {
      translate([xy.x, xy.y, 13]) cylinder(h=3.02, d=3.2, center=false);
   }

   translate([ sockx, socky, -0.01])
      rotate([0,0, 15]) cylinder(h=13.02, d=5.50, center=false, $fn=6);
   translate([-sockx, socky, -0.01])
      rotate([0,0,-15]) cylinder(h=13.02, d=5.50, center=false, $fn=6);
   translate([ sockx,-socky, -0.01])
      rotate([0,0,-15]) cylinder(h=13.02, d=5.50, center=false, $fn=6);
   translate([-sockx,-socky, -0.01])
      rotate([0,0, 15]) cylinder(h=13.02, d=5.50, center=false, $fn=6);
   
   for (xy = [[0,-sockc], [0,sockc], [sockc,0], [-sockc,0]]) {
      translate([xy.x, xy.y, -0.01]) cylinder(h=3.02, d=3.2, center=false);
   }

   translate([0, sockc, 3])
      rotate([0,0,0]) cylinder(h=13.02, d=5.50, center=false, $fn=6);
   translate([0,-sockc, 3])
      rotate([0,0,0]) cylinder(h=13.02, d=5.50, center=false, $fn=6);
   translate([ sockc,0, 3])
      rotate([0,0,30]) cylinder(h=13.02, d=5.50, center=false, $fn=6);
   translate([-sockc,0, 3])
      rotate([0,0, 30]) cylinder(h=13.02, d=5.50, center=false, $fn=6);
   */

}
