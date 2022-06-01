


module inside_cubes(){

cube([16,56,22], center=true);

translate([0,5,0])
rotate([0,0,-60])
translate([0.6,-20,0])
cube([16,37,22], center=true);
};



module outside_cubes(){

cube([22,54,22], center=true);

translate([0,5,0])
rotate([0,0,-60])
translate([0.6,-20,0])
cube([22,35,22], center=true);
};


module fastener_cutouts(){
# translate([0,19,0])
        cube([70,6,4.999],center=true);

# translate([2.5,-19,0])
        cube([30,6,4.99],center=true);

# rotate([0,0,-60])
translate([-5,-26,0])
        cube([30,6,4.99],center=true);
};



difference(){
    outside_cubes();
    
    # translate([0,0,3]){
    inside_cubes();
    };
    
    fastener_cutouts();
}
;


