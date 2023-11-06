
//########################################################################
//                            CONSTANTS
//########################################################################
MeshSize = 0.01 ;
scale = 1.0;

// PI Number
pi = Pi;



//########################################################################
//                           SIZE PARAMTERS
//########################################################################
// CYLINDER SIZES
//
diameter = 1 ;
radius	 = 0.5*diameter ;
x_c = 0 ;
y_c = 0 ;
z_c = 0 ;

//Boundary layer and transition region
bLayer_thickness = 0.25*diameter ; 
transition_thickness = 0.3*diameter ;

// LES parameters
LES_Length = 2.5*diameter ; 
LES_Width = 3.527*diameter ;

// Departure region
Departure_Length = 16*diameter ;
Departure_Width = 3.527*diameter ;

//DOMAIN SIZE
distLeft	= 10*diameter ;
distRight	= 25*diameter ;

distTop		= 10*diameter ;
distBottom	= distTop ;

//height		= 5*diameter ;
height		= 0.1*diameter ;
length		= distLeft+distRight ;
width  		= distTop+distBottom ;

// Box_Circle Size
box_width = 5*diameter ;

a = 0.20*diameter;
c = 0.08*diameter;
R = 0.5*diameter;
theta = 2*Asin(a/diameter);
iR = (diameter*Cos(theta/2) - 2*c)/(2*Cos(theta/2));
aR = 0.75;
oR = 1.25;
lR = 1.75;


rd1 = 15/Cos(theta/2);
rd2 = 20/Cos(theta/2);

//########################################################################
//                         MESH PARAMETERS
//########################################################################

OutSeg = 25;
OutProg = 1.02;
InSeg = 45;
WallSeg = 40;
WallProg = 1.01;
CylSeg = 18;
GrooveSeg = 100;
BLSeg = 35;
BLProg = 1.1;
OBLSeg = 20;
OBLProg = 1.05;
LESSeg = 67;
LESProg = 1.0;
LESVSeg = 50;
DepSeg = 40;
DepProg = 1.0;
DepVSeg = 40;
VSeg = 80;
VProg = 1.01;

// Number of Tangential Segments on circle segments
NTSC = 39 ;
NTSC_W = 43;
NTSC_E = 39 ;
PTSC_E = 0.96 ;
// Number of Normal Segments in Boundary Layer Region
NNSBL = 37 ;
PNSBL = 1.15 ;

// Number of Normal Segments in Transition Region
NNSTL = 8 ;
PNSTL = 1 ;

NNSTL_E = 8 ;
PNSTL_E = 1 ;

// LES horizontal lines

NHS_LES = 67 ;
PHS_LES = 1.0 ;

// LES vertical circle

NVS_LES = 51 ;
PVS_LES = 1.0 ;
 
 // Departure region horizontal lines

NHS_DR = 41 ;
PHS_DR = 1.02 ;

// Departure region vertical lines

NVS_DR = 41 ;
PVS_DR = 1.0 ;

// Domain 

NHS_sides = 40 ;
NVS_inlet = 45 ;
NVS_outlet = 25 ;


// Number of Layers in Z direction
//noLayersZ = Floor((height/diameter)/0.1)*scale ;
noLayersZ = 200;


//========================================================================
// Circle Creation
//========================================================================
ratio = 1 ;

Point(1) = {0, 0, 0, 1.0};

//outer points of grooves

r = iR;

Theta = 0;
Point(2) = {r*Cos(Theta - theta/2), r*Sin(Theta - theta/2), 0, 1.0};
Point(3) = {r*Cos(Theta + theta/2), r*Sin(Theta + theta/2), 0, 1.0};

Theta = pi/2;
Point(4) = {r*Cos(Theta - theta/2), r*Sin(Theta - theta/2), 0, 1.0};
Point(5) = {r*Cos(Theta + theta/2), r*Sin(Theta + theta/2), 0, 1.0};


Theta = pi;
Point(6) = {r*Cos(Theta - theta/2), r*Sin(Theta - theta/2), 0, 1.0};
Point(7) = {r*Cos(Theta + theta/2), r*Sin(Theta + theta/2), 0, 1.0};

Theta = 3*pi/2;
Point(8) = {r*Cos(Theta - theta/2), r*Sin(Theta - theta/2), 0, 1.0};
Point(9) = {r*Cos(Theta + theta/2), r*Sin(Theta + theta/2), 0, 1.0};


//inner points of grooves

r = R;

Theta = 0;
Point(10) = {r*Cos(Theta - theta/2), r*Sin(Theta - theta/2), 0, 1.0};
Point(11) = {r*Cos(Theta + theta/2), r*Sin(Theta + theta/2), 0, 1.0};

Theta = pi/2;
Point(12) = {r*Cos(Theta - theta/2), r*Sin(Theta - theta/2), 0, 1.0};
Point(13) = {r*Cos(Theta + theta/2), r*Sin(Theta + theta/2), 0, 1.0};


Theta = pi;
Point(14) = {r*Cos(Theta - theta/2), r*Sin(Theta - theta/2), 0, 1.0};
Point(15) = {r*Cos(Theta + theta/2), r*Sin(Theta + theta/2), 0, 1.0};

Theta = 3*pi/2;
Point(16) = {r*Cos(Theta - theta/2), r*Sin(Theta - theta/2), 0, 1.0};
Point(17) = {r*Cos(Theta + theta/2), r*Sin(Theta + theta/2), 0, 1.0};

//points of the inner transition region

r = aR;

Theta = 0;
Point(18) = {r*Cos(Theta - theta/2), r*Sin(Theta - theta/2), 0, 1.0};
Point(19) = {r*Cos(Theta + theta/2), r*Sin(Theta + theta/2), 0, 1.0};

Theta = pi/2;
Point(20) = {r*Cos(Theta - theta/2), r*Sin(Theta - theta/2), 0, 1.0};
Point(21) = {r*Cos(Theta + theta/2), r*Sin(Theta + theta/2), 0, 1.0};


Theta = pi;
Point(22) = {r*Cos(Theta - theta/2), r*Sin(Theta - theta/2), 0, 1.0};
Point(23) = {r*Cos(Theta + theta/2), r*Sin(Theta + theta/2), 0, 1.0};

Theta = 3*pi/2;
Point(24) = {r*Cos(Theta - theta/2), r*Sin(Theta - theta/2), 0, 1.0};
Point(25) = {r*Cos(Theta + theta/2), r*Sin(Theta + theta/2), 0, 1.0};

//points of the outer transition region

// LES region

r = oR;
Theta = 0;
Point(26) = {r*Cos(Theta - theta/2), r*Sin(Theta - theta/2), 0, 1.0};
Point(27) = {r*Cos(Theta + theta/2), r*Sin(Theta + theta/2), 0, 1.0};
Theta = pi/2;
Point(28) = {r*Cos(Theta - theta/2), r*Sin(Theta - theta/2), 0, 1.0};
Theta = 3*pi/2;
Point(29) = {r*Cos(Theta + theta/2), r*Sin(Theta + theta/2), 0, 1.0};
ExTheta = 0;
Point(1000) = {-1*r*Cos(ExTheta - theta/2), r*Sin(ExTheta - theta/2), 0, 1.0};
Point(1001) = {-1*r*Cos(ExTheta + theta/2), r*Sin(ExTheta + theta/2), 0, 1.0};
TempTheta = pi/2;
Point(1002) = {-1*r*Cos(TempTheta - theta/2), r*Sin(TempTheta - theta/2), 0, 1.0};
TempTheta = 3*pi/2;
Point(1003) = {-1*r*Cos(TempTheta + theta/2), r*Sin(TempTheta + theta/2), 0, 1.0};

Point(30) = {0.7, 2.15, 0, 1.0};
Point(31) = {2, 3.3, 0, 1.0};
Point(32) = {4.2, 3.75, 0, 1.0};
Point(33) = {5, 3.8, 0, 1.0};


// Departure region


Point(34) = {8, 4, 0, MeshSize};
Point(35) = {13, 4.3, 0, 30*MeshSize};


// LES region

Point(36) = {0.7, -2.15, 0, 1.0};
Point(37) = {2, -3.3, 0, 1.0};
Point(38) = {4.2, -3.75, 0, 1.0};
Point(39) = {5, -3.8, 0, 1.0};


// Departure region


Point(40) = {8, -4, 0, MeshSize};
Point(41) = {13, -4.3, 0, 30*MeshSize};



// Domain points

Point(42) = {x_c-distLeft, y_c+distTop, z_c , MeshSize} ;
Point(43) = {x_c+distRight, y_c+distTop, z_c, MeshSize} ;
Point(44) = {x_c+distRight, y_c-distBottom, z_c, MeshSize} ;
Point(45) = {x_c-distLeft, y_c-distBottom, z_c, MeshSize} ;


For j In {0:3}
	Circle(1 + j) = {2 + 2*j, 1, 3 + 2*j};
EndFor

For j In {0:6}
	Circle(5 + j) = {10 + j, 1, 11 + j};
EndFor
Circle(12) = {17, 1, 10};

For j In {0:6}
	Circle(13 + j) = {18 + j, 1, 19 + j};
EndFor
Circle(20) = {25, 1, 18};

For j In {0:3}
	Line(21 + 2*j) = {2 + 2*j, 10 + 2*j};
	Line(22 + 2*j) = {3 + 2*j, 11 + 2*j};
EndFor

For j In {0:7}
	Line(29 + j) = {10 + j, 18 + j};
EndFor

//Horizontal Curves in the Wake Region
//Line(37) = {20, 28};
Spline(38) = {28, 30, 31, 32};
Spline(39) = {32, 33, 34, 35};
//Line(40) = {25, 29};
Spline(41) = {29, 36, 37, 38};
Spline(42) = {38, 39, 40, 41};

// Vertical Curves in the Wake Region
Circle(43) = {28, 1, 27};
Circle(44) = {27, 1, 26};
Circle(45) = {26, 1, 29};
Circle(46) = {32, 1, 38};
Circle(47) = {35, 1, 41};
Circle(700) = {1003, 1, 1000};
Circle(701) = {1000, 1, 1001};
Circle(702) = {1001, 1, 1002};
Circle(703) = {1002, 1, 28};
Circle(704) = {29, 1, 1003};

// Cross lines in the Wake Region
//Line(48) = {19, 27};
//Line(49) = {18, 26};

//Domain Lines
Line(50) = {45, 42};
Line(51) = {43, 42};
Line(52) = {44, 45};
Line(53) = {43, 44};

//Annular region split lines
//Line(1000) = {19, 27};
//Line(1001) = {22, 1001};
//Line(1002) = {18, 26};
//Line(1003) = {23, 1000};
//Line(1004) = {20, 28};
//Line(1005) = {21, 1002};
//Line(1006) = {25, 29};
//Line(1007) = {24, 1003};


For j In {1:4}
	Transfinite Line {j} = CylSeg*scale;
EndFor
For j In {0:7}
	Transfinite Line {5 + 2*j} = CylSeg*scale;
EndFor
For j In {0:7}
	Transfinite Line {6 + 2*j} = 1.2*CylSeg*scale;
EndFor

//Transfinite Line {43, 45} = 1.2*CylSeg*scale;
//Transfinite Line {43, 702, 700, 45} = 1.2*CylSeg*scale;
//Transfinite Line {44, 701, 703, 704} = CylSeg*scale;

Transfinite Line{43, 44, 45, 704, 700, 701, 702, 703} = 0.9*CylSeg*scale; 

For j In {21:28}
	Transfinite Line {j} = GrooveSeg*scale;
EndFor

For j In {29:36}
	Transfinite Line {j} = BLSeg*scale Using Progression BLProg;
EndFor

Transfinite Line {38, 41} = LESSeg*scale Using Progression LESProg;
Transfinite Line {39, 42} = DepSeg*scale Using Progression DepProg;

Transfinite Line {46} = LESVSeg*scale;
Transfinite Line {47} = DepVSeg*scale;



//Transfinite Line {37, 48, 49, 40} = OBLSeg*scale;



Transfinite Line {50} = InSeg*scale Using Progression 1;
Transfinite Line {53} = OutSeg*scale Using Progression 1;
Transfinite Line {51, 52} = WallSeg*scale Using Progression WallProg;


Line Loop(54) = {1, 22, -5, -21};
Plane Surface(1) = {54};
Line Loop(56) = {2, 24, -7, -23};
Plane Surface(2) = {56};
Line Loop(58) = {3, 26, -9, -25};
Plane Surface(3) = {58};
Line Loop(60) = {4, 28, -11, -27};
Plane Surface(4) = {60};
Line Loop(62) = {5, 30, -13, -29};
Plane Surface(5) = {62};
Line Loop(64) = {6, 31, -14, -30};
Plane Surface(6) = {64};
Line Loop(66) = {7, 32, -15, -31};
Plane Surface(7) = {66};
Line Loop(68) = {8, 33, -16, -32};
Plane Surface(8) = {68};
Line Loop(70) = {9, 34, -17, -33};
Plane Surface(9) = {70};
Line Loop(72) = {10, 35, -18, -34};
Plane Surface(10) = {72};
Line Loop(74) = {11, 36, -19, -35};
Plane Surface(11) = {74};
Line Loop(76) = {12, 29, -20, -36};
Plane Surface(12) = {76};

//Line Loop(78) = {20, 49, 45, -40};
//Plane Surface(13) = {78};
//Line Loop(80) = {13, 48, 44, -49};
//Plane Surface(14) = {80};
//Line Loop(82) = {14, 37, 43, -48};
//Plane Surface(15) = {82};


//Annular ring surface
Line Loop(1000) = {701, 702, 703, 43, 44, 45, 704, 700, 17, 16, 15, 14, 13, 20, 19, 18};
Plane Surface(500) = {1000};


Line Loop(84) = {43, 44, 45, 41, -46, -38};
Plane Surface(16) = {84};
Line Loop(86) = {46, 42, -47, -39};
Plane Surface(17) = {86};

Line Loop(88) = {50, -51, 53, 52};
//Line Loop(89) = {47, -42, -41, -40, -19, -18, -17, -16, -15, 37, 38, 39};
//Line Loop(89) = {47, -42, -41, -45, -44, -43, 38, 39};
Line Loop(89) = {47, -42, -41,704, 700, 701, 702, 703, 38, 39};
Plane Surface(18) = {88, 89};


//Line Loop(90) = {6,22,1,-21,12,28,4,-27,10,26,3,-25,8,24,2,-23};
//Plane Surface(19) = {90};


Transfinite Surface {1} = {3, 2, 10, 11} Alternated;
Transfinite Surface {2} = {5, 4, 12, 13} Alternated;
Transfinite Surface {3} = {7, 6, 14, 15} Alternated;
Transfinite Surface {4} = {9, 8, 16, 17} Alternated;
Transfinite Surface {5} = {11, 10, 18, 19} Alternated;
Transfinite Surface {6} = {12, 11, 19, 20} Alternated;
Transfinite Surface {7} = {13, 12, 20, 21} Alternated;
Transfinite Surface {8} = {14, 13, 21, 22} Alternated;
Transfinite Surface {9} = {15, 14, 22, 23} Alternated;
Transfinite Surface {10} = {16, 15, 23, 24} Alternated;
Transfinite Surface {11} = {17, 16, 24, 25} Alternated;
Transfinite Surface {12} = {10, 17, 25, 18} Alternated;




//Transfinite Surface {14} = {19, 18, 26, 27} Alternated;
//Transfinite Surface {15} = {20, 19, 27, 28} Alternated;
//Transfinite Surface {13} = {18, 25, 29, 26} Alternated;

//Recombine Surface {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, //15, 16, 17, 18};
Recombine Surface {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 16, 17, 18, 500};

ex_length = 20;
Extrude {0, 0, ex_length} {
  Surface{500, 16, 17, 18};
  Layers{200};
  Recombine;
}



//rotation_angle 

//For pitch of 1D -----> 481.5*2PI
//For pitch of 2D -----> 481.5*PI
//For pitch of 4D -----> 481.5*PI/2

rotation_angle = (2*Pi*481.5)/(4);

Extrude {{0, 0, ex_length}, {0, 0, 1}, {0, 0, 0}, rotation_angle} {
Surface{1,2,3,4,5,6,7,8,9,10,11,12}; Layers{200};Recombine;
}

Surface Loop(1000) = {500, 1082, 1021, 1025, 1033, 1037, 1041, 1045, 1049};
Volume(5000) = {1000};

Physical Volume("fluid", 10) = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};

Physical Surface("inflow", 1) = {1155};

Physical Surface("outflow", 2) = {1163};

Physical Surface("side_1", 3) = {1159};

Physical Surface("side_2", 4) = {1167};
//Physical Surface("sides", 5) = {498, 506};


Physical Surface("top", 6) = {1114, 1136, 1208, 1252, 1274, 1296, 1230, 1318, 1340, 1362, 1384, 1406, 1428, 1450, 1472, 1082};

Physical Surface("bottom", 7) = {16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 500};

Physical Surface("riser", 8) = {98, 102, 208, 132, 120, 124, 252, 154, 142, 146, 296, 176, 164, 168, 340, 110};

Physical Line("riser_nodes", 9) = {96};


Physical Volume("riser_bl", 11) = {5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};

Physical Volume("domain_noRiser", 12) = {1, 2, 3, 4};

Physical Volume("Annular_Region", 13) = {1};

