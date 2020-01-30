$fn = 100;
r = 1.75;
c = 6;
difference(){
cube([100,40,0.2]);
for (i = [1:c]){
    color("red")
    translate([i*15,20,r/4])
    sphere(r,center=true);
    r = r+0.5*i;
}
}