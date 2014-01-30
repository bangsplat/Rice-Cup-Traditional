//
// rice cup
//	cube type
//
// rice cooker cups are a standard 180 ml
// which is 180000 mm^3
// 

$fa=0.1;

BASE=35;
TOP=BASE*1.2;
AVGDIAM=(BASE+TOP)/2;
VOLUME=180000;
PI=3.14159;
HEIGHT=VOLUME/(AVGDIAM*AVGDIAM*PI);

WALLS=2;

difference() {
	// rice cup exterior
	cylinder(r1=(BASE/2)+WALLS,r2=(TOP/2)+WALLS,h=HEIGHT+WALLS);
	// rice cup interior
	translate( v=[0,0,WALLS] ) {
		cylinder(r1=(BASE/2),r2=(TOP/2),h=HEIGHT);
	}
}
