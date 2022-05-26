


/*
hull(){
    
     
    polygon(points=[[0,50],[-43,25],[-43,-25],[0,-50],[43,-25],[43,25]]);
}
;
*/
/*
module xexagon_base_large(){
    linear_extrude(20) scale(2) polygon(points=[[0,50],[-43,25],[-43,-25],[0,-50],[43,-25],[43,25]]);
}
;

module xexagon_base_small(){
    translate([0,0,60])
    linear_extrude(10) 
    scale(0.2) 
    polygon(points=[[0,50],[-43,25],[-43,-25],[0,-50],[43,-25],[43,25]], convexity = 1);
}
;
hull(){
    xexagon_base_large();
    xexagon_base_small();
}
;

translate([0,0,70])
cylinder(h = 30, r1 = 20, r2 = 20, center = true);
*/

;
/*
bx_le=20;
bx_r=100;
fn=6;
*/

module base_xexagon(bx_le = 20, bx_r = 100, fn = 6){
    linear_extrude(bx_le) rotate([0,0,90]) circle(r = bx_r, $fn = fn);   
}
;




translate([0,0,70])
cylinder(h = 30, r1 = 20, r2 = 20, center = true);


module base_extruded(){
    hull(){
        base_xexagon();
        translate([0,0,40]) base_xexagon(bx_r=20);
    }
}
;
//difference(){
base_extruded();

//};
//translate([0,0,0]) sphere(10);

