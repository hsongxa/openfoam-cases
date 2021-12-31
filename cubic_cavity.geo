// cube of (0, 0, 0) - (1, 1, 1)
Point(1) = {0, 0, 0, 1.0};
Point(2) = {1, 0, 0, 1.0};
Point(3) = {1, 1, 0, 1.0};
Point(4) = {0, 1, 0, 1.0};
Point(5) = {0, 0, 1, 1.0};
Point(6) = {1, 0, 1, 1.0};
Point(7) = {1, 1, 1, 1.0};
Point(8) = {0, 1, 1, 1.0};

Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};
Line(5) = {1, 5};
Line(6) = {2, 6};
Line(7) = {3, 7};
Line(8) = {4, 8};
Line(9) = {5, 6};
Line(10) = {6, 7};
Line(11) = {7, 8};
Line(12) = {8, 5};

Curve Loop(1) = {1, 6, -9, -5};
Curve Loop(2) = {3, 8, -11, -7};
Curve Loop(3) = {4, 5, -12, -8};
Curve Loop(4) = {2, 7, -10, -6};
Curve Loop(5) = {1, 2, 3, 4};
Curve Loop(6) = {9, 10, 11, 12};

Plane Surface(1) = {1};
Plane Surface(2) = {2};
Plane Surface(3) = {3};
Plane Surface(4) = {4};
Plane Surface(5) = {5};
Plane Surface(6) = {6};

Surface Loop(1) = {1, 5, 4, 2, 3, 6};
Volume(1) = {1};

// 41 cells in each direction so 42 nodes including two ends
Transfinite Curve{1:12} = 42;
Transfinite Surface{1};
Transfinite Surface{2};
Transfinite Surface{3};
Transfinite Surface{4};
Transfinite Surface{5};
Transfinite Surface{6};
Transfinite Volume{1};

Recombine Surface{1};
Recombine Surface{2};
Recombine Surface{3};
Recombine Surface{4};
Recombine Surface{5};
Recombine Surface{6};
Recombine Volume{1};

Physical Surface("front") = {1};
Physical Surface("back") = {2};
Physical Surface("left") = {3};
Physical Surface("right") = {4};
Physical Surface("bottom") = {5};
Physical Surface("top") = {6};
Physical Volume("cube") = {1};

