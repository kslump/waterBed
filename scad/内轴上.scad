$fn=64;
use <../lib/lsdlib.scad>
use <../lib/threads.scad>
use <../lib/gears.scad>

ptlen = 100;

sockx = 8;
socky = 8;

rotate([0,270,0]) 
difference() {
   union() {
      translate([0,0,0]) cylinder(h=24,  d=36, center=false);      
      translate([0,0,16]) rotate([0,90,0])
         cylinder(h=ptlen,  d=16, center=false);
      translate([ptlen,0,16]) sphere(d=16);      
   }
          
   translate([ptlen-2,0,16]) rotate([45,0,0]) cylinder(h=30,  d=3, center=false);

   translate([-20,-20,-1]) cube([6, 40, 40], center=false);
   
   //translate([0,0,-7]) cylinder(h=14,  d=134, center=false);
   //translate([0,0,40]) cylinder(h=15.01,  d=150, center=false);
   //translate([0,0,55]) cylinder(h= 1.01, d1=150, , d2=152, center=false);
   
   // 下方固定孔
   //for (xy = [[-88,0], [88,0], [-44, 76.2], [44, 76.2], [-44,-76.2], [44,-76.2]]) {
   //   translate([xy.x, xy.y, -1]) cylinder(h=60, d=11, center=false);
   //   translate([xy.x, xy.y, 16]) cylinder(h=60, d=18, center=false);
   //}

   // 舵机固定孔,M4x15
   //for (xy = [[-20,-20], [-20,20], [20, -20], [20, 20]]) {
      //translate([xy.x, xy.y, -1]) cylinder(h=50, d=11, center=false);
   //   translate([xy.x, xy.y, -1]) cylinder(h=20, d=4.5, center=false);
   //   translate([xy.x, xy.y, 10]) cylinder(h=20, d=8.0, center=false);
   //}
   //translate([0, 20, -1]) cylinder(h=100, d=20, center=false);

   for (xy = [[sockx,socky], [sockx,-socky], [-sockx,socky], [-sockx,-socky]]) {
      translate([xy.x, xy.y, -1]) cylinder(h=26, d=3.5, center=false);
      translate([xy.x, xy.y,  4]) cylinder(h=26, d=6.0, center=false);
   }
   
   translate([0, 0, -1]) cylinder(h=17, d=11.0, center=false);
   translate([0, 0, 16]) sphere(d=11);
   
   translate([0,0,16]) rotate([0,90,0])
         cylinder(h=6,  d1=11, d2=8, center=false);
   
   translate([0,0,16]) rotate([0,90,0])
         cylinder(h=ptlen,  d=8, center=false);

}
