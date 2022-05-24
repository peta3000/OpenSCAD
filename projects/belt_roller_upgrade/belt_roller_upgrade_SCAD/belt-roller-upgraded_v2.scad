


    

union(){
import("/Users/peter/Documents/PROJEKTE/3000-PEAKS/2022/3d-prints/belt-roller-upgraded.stl");
}
;


translate([-25,0,34.2])

rotate([0,90,0])

cylinder($fn=60, h=50, d=3.5);



;





hull(){

translate([-25,0,47])

rotate([0,90,0])

cylinder($fn=60, h=50, d=3.5);


translate([-25,0,34.2])

rotate([0,90,0])

cylinder($fn=60, h=50, d=3.5);
    
}
;

;


translate([-20,-20,32.5])
cube([40,40,5]);
