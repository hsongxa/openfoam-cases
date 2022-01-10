// points and lines on the roof (the maximum Y plane)
Point(1) = {0, 0.0101, 0, 1.0};
Point(2) = {-0.052, 0.0101, 0, 1.0};
Point(3) = {-0.052, 0.0101, -0.09, 1.0};
Point(4) = {0, 0.0101, -0.09, 1.0};
Point(5) = {0.286, 0.0101, -0.09, 1.0};
Point(6) = {0.286, 0.0101, 0, 1.0};

Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};
Line(5) = {4, 5};
Line(6) = {5, 6};
Line(7) = {6, 1};

// two parts of the roof: one before the step
// and the other after the step
Curve Loop(1) = {1, 2, 3, 4};
Curve Loop(2) = {7, -4, 5, 6};
Plane Surface(1) = {1};
Plane Surface(2) = {2};

// X: 35 cells before the step and 195 cells after the step
Transfinite Curve{1, 3} = 36;
Transfinite Curve{5, 7} = 196;
// Z: 90 cells with grading
Transfinite Curve{2, -4, -6} = 61 Using Progression 0.98;

Transfinite Surface{1};
Recombine Surface{1};
Transfinite Surface{2};
Recombine Surface{2};

// extrude both parts in the negative Y direction: 26 cells
out1[] = Extrude { 0, -0.0052, 0 } {
  Surface{1}; Layers{26}; Recombine;
};

out2[] = Extrude { 0, -0.0052, 0 } {
  Surface{2}; Layers{26}; Recombine;
};

// continue extrude the part after the step: 24 cells
out3[] = Extrude { 0, -0.0049, 0 } {
  Surface{out2[0]}; Layers{24}; Recombine;
};

Physical Surface("middleplane") = { out1[2], out2[2], out3[2] };
Physical Surface("endwall") = { out1[4], out2[4], out3[4] };
Physical Surface("inlet") = { out1[3] };
Physical Surface("outlet") = { out2[5], out3[5] };
Physical Surface("roof") = { 1, 2 };
Physical Surface("floor") = { out1[0], out3[3], out3[0] };
Physical Volume("channel") = { out1[1], out2[1], out3[1] };

