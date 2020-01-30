w = 110;
h = 110;
d = 5;

hw = 0.2;

difference(){
    cube([w,h,d]);
for (i = [8:20:90]){
    for(j = [8:20:90]){
        color("red")
        translate([i,j,-hw/2])
        cube([15,12,12]);
        }
    
 
}
}


