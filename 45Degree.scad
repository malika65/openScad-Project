w = 116;
h = 116;
d = 5;

w1 = 153;
h1 = 10;
d1 = 12;

difference(){
    cube([w,h,d]);
for (i = [1:5]){
    color("red")
    translate([14,20*i-16,-1])
    rotate(45)
    cube([w1-(25*i),h1,d1]);
   mirror([1,-1,0])
    translate([12,20*i-13,-1])
    rotate(45)
    cube([w1-(25*i),h1,d1]);
    }
    
 

}