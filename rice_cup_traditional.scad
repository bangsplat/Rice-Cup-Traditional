//
// rice cup
//	cube type
//
// rice cooker cups are a standard 180 ml
// which is 180000 mm^3
//
// version 2
// created 2014-01-29
// modified 2016-01-19
//
// version 2 - fixed math (was using formula for circumfrence instead of area of a circle)
// 

$fa=0.1;
INCH=25.4;
PI=3.14159;

VOLUME=180000;  // STANDARD RICE CUP VOLUME (MM^3) - CANGE FOR OTHER CUP SIZES
BASE=2.25*INCH; // THIS CONTROLS THE WIDTH AND HEIGHT
TOP=BASE*1.2;   // THIS CONTROLS THE SLOPE OF THE SIDES OF THE CUP
WALLS=2;        // THIS CONTROLS HOW THICK THE CUP IS

AVGDIAM=(BASE+TOP)/2;
AVGRADIUS=AVGDIAM/2;
HEIGHT=VOLUME/(PI*AVGRADIUS*AVGRADIUS);

difference() {
	// rice cup exterior
	cylinder(r1=(BASE/2)+WALLS,r2=(TOP/2)+WALLS,h=HEIGHT+WALLS);
	// rice cup interior
	translate( v=[0,0,WALLS] ) {
		cylinder(r1=(BASE/2),r2=(TOP/2),h=HEIGHT);
	}
}
