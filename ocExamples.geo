SetFactory("OpenCASCADE");


nturns = 3;
npts = 20;
r = 1;
h = 1 * nturns;
For i In {0 : npts - 1}
  theta = i * 2*Pi*nturns/npts;
  Point(1000 + i) = {r * Cos(theta), r * Sin(theta), i * h/npts};
EndFor
Spline(1000) = {1000 : 1000 + npts - 1};

// A wire is like a curve loop, but open:
Wire(1000) = {1000};


Disk(1000) = {1,0,0, 0.2};
Rotate {{1, 0, 0}, {0, 0, 0}, Pi/2} { Surface{1000}; }

// We extrude the disk along the spline to create a pipe:
Extrude { Surface{1000}; } Using Wire {1000}
Delete{ Surface{1000}; }
Geometry.NumSubEdges = 1000;

