use <catchnhole/catchnhole.scad>;

$fn = 50;
a = 50;
b = 25;
h = 25;
nutcatch_side_offset = 100;
//höhe schraubenauslass für M10 (ca. 8.4 also 8.4mm)
/*

difference () {
  translate([-a / 2, -b / 2, 0]) cube([a, b, h]);

  
  // A simple nutcatch on the bottom:
  nutcatch_parallel("M3");
  bolt("M3", h);

  // Get one on the top as well:
  translate([0, -b / 4, h]) {
    mirror([0, 0, 1]) {
      nutcatch_parallel("M3");
      bolt("M3", h);
    }
  }


  // An M5 nutcatch with a countersunk screw:
  translate([10, 0, 0]) {
    nutcatch_parallel("M5");
    bolt("M5", 22.2, kind = "countersunk");
  }

  // An M8 nutcatch with a socket head countersunk screw:
  translate([-15, 0, 0]) {
    nutcatch_parallel("M8");
    bolt("M8", h, kind = "socket_head", countersink = 0.5);
  }

  // A sidecut nutcatch:
  translate([a / 2 - nutcatch_side_offset, 0, 4])
    rotate([0, 270, 180]) {
      nutcatch_sidecut("M3");
      bolt("M3", nutcatch_side_offset, kind = "socket_head", countersink = 0.1);
    }
}
*/







module base_xexagon(bx_le = 20, bx_r = 100, fn = 6){
    linear_extrude(bx_le) rotate([0,0,90]) circle(r = bx_r, $fn = fn);   
}
;

module base_extruded(){
    hull(){
        base_xexagon();
        translate([0,0,33]) base_xexagon(bx_r=20);
    }
}
;


module whole_base(){
base_extruded();



# translate([0,0,33])
cylinder(h = 66, r1 = 20, r2 = 20, center = true);

}
;

//difference(){

# whole_base();


 // A sidecut nutcatch:
  translate([0, 0, 49.2])
    rotate([0, 0, 180]) {
      nutcatch_sidecut("M10");
            translate([0,0,0])
      bolt("M10", nutcatch_side_offset, kind = "headless", countersink = 0.1);
    }
//}
    
//};
//translate([0,0,0]) sphere(10);

