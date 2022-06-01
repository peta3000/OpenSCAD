use <catchnhole/catchnhole.scad>;

$fn = 50;
a = 50;
b = 25;
h = 25;
nutcatch_side_offset = 80;

module nuts_bolts_cutout(){
 // A sidecut nutcatch:
  translate([0, 0, -12])
    rotate([90, 0, 180]) {
      //nutcatch_sidecut("M10");
            translate([0,0,-40])
     bolt("M6", nutcatch_side_offset, kind = "headless", countersink = 0.1);
      translate([0,0,10])
      nutcatch_parallel("M6");
      
      translate([0,0,-6])
      nutcatch_parallel("M6");
      
      translate([0,0,-15])
      nutcatch_parallel("M6");

    }
 }

module half_cylinder(){
difference(){
difference(){

translate([0,6,-12])
rotate([90,0,0])
cylinder(58,30,30,center=true);


translate([0,6,-12])
rotate([90,0,0])
cylinder(60,15,15,center=true);

}

translate([0,0,-2])
cube([60,80,28], center=true);
}

}

/*
difference(){
union(){
    # difference(){

        union(){
            translate([0,0,1.5]){
                cube([240,30,3], center=true);

                difference(){
                translate([0,0,-12.5])
                cube([36,30,28], center=true);

                half_cylinder();
                }
            }
            
            //additional edge to support pushing
            rotate(0,0,180){
            translate([0,13.5,6.5])
            cube([240,3,3], center=true);
            translate([0,16.5,7])
            cube([240,3,2], center=true);
            }
            
        }

        //cut-off-objects
        # translate([128.5,0,0])
        rotate([0,0,60])
        translate([0,0,1.5])
        cube([240,30,14], center=true);


        # translate([-128.5,0,0])
        rotate([0,0,-60])
        translate([0,0,1.5])
        cube([240,30,14], center=true);


        #translate([0,0,-12])
        cube([32,15,34], center=true);


       

    }




    //adjustment wheel
    # translate([0,6,-12])
    rotate([90,0,0])
    linear_extrude(12) circle(15, $fn=36);
    
};

nuts_bolts_cutout();
}
;
*/


difference(){
 //adjustment wheel
    # translate([0,6,-12])
    rotate([90,0,0])
    linear_extrude(12) circle(15, $fn=36);
    nuts_bolts_cutout();
    }