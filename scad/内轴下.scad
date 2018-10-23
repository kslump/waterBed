$fn=128;
use <../lib/lsdlib.scad>
use <../lib/threads.scad>
use <../lib/gears.scad>

sockx = 8;
socky = 8;
 
difference() {
   union() {
      translate([0,0,0]) cylinder(h= 2,  d=36, center=false);
      translate([0,0,2]) cylinder(h=13,  d=30, center=false);
      
   }

   translate([0,0,8.5]) rotate_extrude(convexity = 10)
      translate([15, 0, 0]) circle(r = 1);

   for (xy = [[sockx,socky], [sockx,-socky], [-sockx,socky], [-sockx,-socky]]) {
      translate([xy.x, xy.y, -1]) cylinder(h=13, d=5.45, center=false, $fn=6);
      translate([xy.x, xy.y, 11.99]) cylinder(h=4.02, d=3.5, center=false);
   }
   
   translate([0, 0, -1]) cylinder(h=17, d=14.0, center=false);
}
