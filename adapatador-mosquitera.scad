side = "a"; // a or b
width = 12;

if (side == "a") {
    union() {
        difference() {
            // base
            cube(size = [61,30.5,width], center = false);
            
            // hueco rail
            translate([-0.5,-0.5,-0.5]) cube(size = [22.5,22,width+1], center = false);

            // tornillo mosquitera
            translate([6.5,25.9,-0.5]) cylinder(h=width+1, d=5, $fn=100);

            // tornillo soporte
            translate([41.75,15.25,-0.5]) cylinder(h=width+1, d=5, $fn=100);
            translate([41.75,15.25,10.1]) cylinder(h=5, d1=5, d2=10, $fn=100);
        }
        
        // engache rail
        translate([0,0.75,5]) cube(size = [22,19.5,width-5], center = false);
    }
} else {
        union() {
        difference() {
            // base
            cube(size = [61,30.5,width], center = false);
            
            // hueco rail
            translate([-0.5,-0.5,-0.5]) cube(size = [22.5,22,width+1], center = false);

            // tornillo mosquitera
            translate([6.5,25.9,-0.5]) cylinder(h=width+1, d=5, $fn=100);

            // tornillo soporte
            translate([41.75,15.25,-0.5]) cylinder(h=width+1, d=5, $fn=100);
            translate([41.75,15.25,-0.1]) cylinder(h=5, d1=10, d2=5, $fn=100);
        }
        
        // engache rail
        translate([0,0.75,0]) cube(size = [22,19.5,width-5], center = false);
    }
}