$fn = 150;
h = 10;
d = 20;

hw = 6;
dw = 10;
w = 2;
union(){
    //main cylinder
    cylinder(d=d,h=h);
    
    //tooth
    translate([0,0,dw])
    cube([dw,w,hw],center=true);
    translate([0,0,dw])
    cube([w,dw,hw],center=true);

    rotate(45)
    translate([0,0,dw])
    cube([dw,w,hw],center=true);
    rotate(45)
    translate([0,0,dw])
    cube([w,dw,hw],center=true);
    
    //little cylinder in the center
    translate([0,0,dw])
    cylinder(d=7,hw,center=true);
}

error = 0.1;
difference(){
    translate([30,0,0])
    cylinder(d=d,h=h);
    //tooth
    translate([30,0,10])
    cube([dw+error,w+error,hw+error],center=true);
    translate([30,0,10])
    cube([w+error,dw+error,hw+error],center=true);
    translate([30,0,10])
    rotate(45)
    cube([dw+error,w+error,hw+error],center=true);
    translate([30,0,10])
    rotate(45)
    cube([w,dw,hw],center=true);
    
    //little cylinder in the center
    translate([30,0,10])
    cylinder(d=7+error,h=6+error,center=true);
    
    }
