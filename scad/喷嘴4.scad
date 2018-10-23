$fn=64;

ptwd = 8.4;
ptnd = 4;

translate([0, 0, 20.6]) rotate_extrude(convexity = 10)
  translate([8.25, 0, 0]) circle(d = 1.5);
// translate([0, 0, 0]) rotate_extrude(convexity = 10)
//   translate([5.5, 0, 0]) circle(d = 0.8);

difference() {
	union() {
		translate([0,0,0]) cylinder(h=14, d=11.8, center=false);
    difference() {
      translate([0,0,20.6]) sphere(d=18);
      translate([0,0,20.6]) sphere(d=15);
      translate([-10,-10,20.6]) cube([20,20,10]);
    }
		translate([0,0,14]) cylinder(h=6, d=ptwd, center=false);
	}
	translate([0,0,0]) cylinder(h=20, d=ptnd, center=false);

	translate([0,0,0]) cylinder(h=3, d1=10.2, d2=ptnd, center=false);

}
