$fn=64;
use <../lib/lsdlib.scad>
use <../lib/threads.scad>
use <../lib/gears.scad>

ptlen = 100;

sockx = 8;
socky = 8;

//rotate([0,270,0]) 
difference() {
   union() {
      translate([0,-30,0]) cube([8,60,30]);
      translate([182,-30,0]) cube([8,60,30]);
      translate([182,-30,-57]) cube([8,60,57]);
      translate([0,-30,0]) cube([190,60,4]);      

      translate([0,-30,0]) cube([190,4,17]);
      translate([0,26,0]) cube([190,4,17]);      
      //translate([0,-30,0]) cube([200,60,4]);      
   }
   
   translate([20,-10,-1]) cube([158,20,17]);
   
   translate([-1,0,16]) rotate([0,90,0]) cylinder(h=10, d=20, center=false);   
   translate([ 2,0,16]) rotate([0,90,0]) cylinder(h=10, d=24, center=false);

   translate([181,0,16]) rotate([0,90,0]) cylinder(h=10, d=20, center=false);   
   translate([180,0,16]) rotate([0,90,0]) cylinder(h=8, d=24, center=false);

   translate([181, 23.5,-5]) rotate([0,90,0]) cylinder(h=10, d=4, center=false);
   translate([181,-23.5,-5]) rotate([0,90,0]) cylinder(h=10, d=4, center=false);
   translate([181, 23.5,-52]) rotate([0,90,0]) cylinder(h=10, d=4, center=false);
   translate([181,-23.5,-52]) rotate([0,90,0]) cylinder(h=10, d=4, center=false);
   
   translate([181, 0,-28.5]) rotate([0,90,0]) cylinder(h=10, d=30, center=false);

   //translate([-20,-20,-1]) cube([6, 40, 40], center=false);
   
   for (xy = [[20,20], [20,-20], [30,20], [30,-20]]) {
      translate([xy.x, xy.y, -1]) cylinder(h=15, d=6, center=false);
   }
   
}
