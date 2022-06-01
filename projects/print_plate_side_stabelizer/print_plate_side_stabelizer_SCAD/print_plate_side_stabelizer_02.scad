
difference(){
union(){
difference(){
union(){
//main back plate
cube([100,3,34], center=true);

//right structure bottom square
# translate([9.4,-50,-11.9])
cube([3,100,18], center=true);

//left structure bottom square
# translate([-9.4,-50,-11.9])
cube([3,100,18], center=true);


translate([0,-15.625,-15])
cube([100,34.25,4], center=true);
};

//base plate leveling/cut
translate([0,-15.625,-19])
cube([100,234.25,4], center=true);

};


//left structure upper triangle
# difference(){
//whole_triangle
hull(){
translate([-9.4,0,6.5])
cube([3,3,21], center=true);

translate([-9.4,-98.5,-3.4])
cube([3,3,1], center=true);
};

//hole_01
hull(){
translate([-9.4,0,4.1])
cube([6,3,14], center=true);

translate([-9.4,-18.5,2.1])
cube([6,3,10], center=true);
};

//hole_02
hull(){
translate([-9.4,-28.5,1.4])
cube([6,0.1,8.5], center=true);

translate([-9.4,-68.5,-2.85])
cube([6,3,0.1], center=true);
};

};



//right structure upper triangle
difference(){
//whole_triangle
hull(){
translate([9.4,0,6.5])
cube([3,3,21], center=true);

translate([9.4,-98.5,-3.4])
cube([3,3,1], center=true);
};

//hole_01
hull(){
translate([7.9,0,4.1])
cube([6,3,14], center=true);

translate([7.9,-18.5,2.1])
cube([6,3,10], center=true);
};

//hole_02
hull(){
translate([7.9,-28.5,1.4])
cube([6,0.1,8.5], center=true);

translate([7.9,-68.5,-2.85])
cube([6,3,0.1], center=true);
};

};


hull(){
    //rotated right
    translate([12.2,0,-6.60]){
    rotate([0,90,0])
    //right structure upper triangle
    difference(){
    //whole_triangle
    hull(){
    translate([7.9,0,6.5])
    cube([3,3,21], center=true);

    translate([7.9,-98.5,-3.4])
    cube([3,3,1], center=true);
    };

    //hole_01
    hull(){
    translate([7.9,0,4.1])
    cube([6,3,14], center=true);

    translate([7.9,-18.5,2.1])
    cube([6,3,10], center=true);
    };

    //hole_02
    hull(){
    translate([7.9,-28.5,1.4])
    cube([6,0.1,8.5], center=true);

    translate([7.9,-68.5,-2.85])
    cube([6,3,0.1], center=true);
    };

    };

    }
    ;
    //bottom part
    //rotated right
    translate([12.2,0,-7.6]){
        rotate([0,90,0])
            //right structure upper triangle
            difference(){
            //whole_triangle
            hull(){
            translate([7.9,0,6.5])
            cube([3,3,21], center=true);

            translate([7.9,-98.5,-3.4])
            cube([3,3,1], center=true);
            };

            //hole_01
            hull(){
            translate([7.9,0,4.1])
            cube([6,3,14], center=true);

            translate([7.9,-18.5,2.1])
            cube([6,3,10], center=true);
            };

            //hole_02
            hull(){
            translate([7.9,-28.5,1.4])
            cube([6,0.1,8.5], center=true);

            translate([7.9,-68.5,-2.85])
            cube([6,3,0.1], center=true);
            };

            };

    }
    ;
}
;


//left_structurer_bottom
hull(){

//upper part
union(){
//rotated left
translate([-12.2,0,-6.60]){
rotate([0,-90,0]){
//right structure upper triangle
difference(){
//whole_triangle
hull(){
translate([-7.9,0,6.5])
cube([3,3,21], center=true);

translate([-7.9,-98.5,-3.4])
cube([3,3,1], center=true);
};

//hole_01
hull(){
translate([-7.9,0,4.1])
cube([6,3,14], center=true);

translate([-7.9,-18.5,2.1])
cube([6,3,10], center=true);
};

//hole_02
hull(){
translate([-7.9,-28.5,1.4])
cube([6,0.1,8.5], center=true);

translate([-7.9,-68.5,-2.85])
cube([6,3,0.1], center=true);
};

};
};
};
};

//lower part
translate([0,0,-11.1]){
union(){
//rotated left
translate([-12.2,0,3.5]){
rotate([0,-90,0]){
//right structure upper triangle
difference(){
//whole_triangle
hull(){
translate([-7.9,0,6.5])
cube([3,3,21], center=true);

translate([-7.9,-98.5,-3.4])
cube([3,3,1], center=true);
};

//hole_01
hull(){
translate([-7.9,0,4.1])
cube([6,3,14], center=true);

translate([-7.9,-18.5,2.1])
cube([6,3,10], center=true);
};

//hole_02
hull(){
translate([-7.9,-28.5,1.4])
cube([6,0.1,8.5], center=true);

translate([-7.9,-68.5,-2.85])
cube([6,3,0.1], center=true);
};

};
};
};
};
};
}
;
};



//holes for fasteners
union(){
translate([0,-40,-10.5])
        cube([70,6,4.999],center=true);

translate([0,-80,-10.5])
        cube([70,6,4.99],center=true);

translate([0,-80,3.04])
        cube([70,6,4.999],center=true);

        
//left hole cutout
hull(){
translate([-36,50,-1.5])
rotate([90,0,0])
cylinder(100,3.02,3.02, $fn=60);

translate([-20,50,-1.5])
rotate([90,0,0])
cylinder(100,3.02,3.02, $fn=60);

}
;


//right hole cutout
hull(){
translate([36,50,-1.5])
rotate([90,0,0])
cylinder(100,3.02,3.02, $fn=60);

translate([20,50,-1.5])
rotate([90,0,0])
cylinder(100,3.02,3.02, $fn=60);

};
};

}
;


//# cube([15.8,100,20],center=true);