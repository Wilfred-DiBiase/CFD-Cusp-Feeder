r = 0.023;
c = 0.1;
l = 0.25;
p = 5;

// Box Around Circles

Point(1) = {0, 0.05, 0};
Point(2) = {-c, 0.05, 0};
Point(3) = {-c, -0.05, 0};
Point(4) = {0, -0.05, 0};
Point(5) = {c, 0.05, 0};
Point(6) = {c, -0.05, 0};

Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,1};
Line(5) = {4,6};
Line(6) = {6,5};
Line(7) = {5,1};

// Set Up Circles

Point(17) = {-c/2, 0, 0};
Point(18) = {c/2, 0, 0};
Point(19) = {-c/2+r*Cos(Pi/4),  r*Cos(Pi/4), 0};
Point(20) = {c/2-r*Cos(Pi/4), r*Cos(Pi/4), 0};
Point(21) = {-c/2+r*Cos(Pi/4), -r*Cos(Pi/4), 0};
Point(22) = {c/2+r*Cos(Pi/4), -r*Cos(Pi/4), 0};
Point(23) = {c/2-r*Cos(Pi/4), -r*Cos(Pi/4), 0};
Point(24) = {-c/2-r*Cos(Pi/4), r*Cos(Pi/4), 0};
Point(25) = {-c/2-r*Cos(Pi/4), -r*Cos(Pi/4), 0};
Point(26) = {c/2+r*Cos(Pi/4), r*Cos(Pi/4), 0};

Circle(8) = {24, 17, 19};
Circle(9) = {19, 17, 21};
Circle(10) = {21, 17, 25};
Circle(11) = {25, 17, 24};
Circle(12) = {20, 18, 26};
Circle(13) = {26, 18, 22};
Circle(14) = {22, 18, 23};
Circle(15) = {23, 18, 20};

Curve Loop(1) = {8,9,10,11};
Curve Loop(2) = {12,13,14,15};

Line(16) = {19,1};
Line(17) = {24,2};
Line(18) = {25,3};
Line(19) = {21,4};
Line(20) = {20,1};
Line(21) = {23,4};
Line(22) = {22,6};
Line(23) = {26,5};

// Boxes Around Boxes

Point(7) = {0, 0.15, 0};
Point(8) = {-c, 0.15, 0};
Point(9) = {c, 0.15, 0};
Point(10) = {0, -0.15, 0};
Point(11) = {-c, -0.15, 0};
Point(12) = {c, -0.15, 0};

Point(13) = {-0.125, 0.15, 0};
Point(14) = {0.125, 0.15, 0};
Point(15) = {-0.125, -0.15, 0};
Point(16) = {0.125, -0.15, 0};
Point(27) = {-0.125, -0.05, 0};
Point(28) = {-0.125, 0.05, 0};
Point(29) = {0.125, -0.05, 0};
Point(30) = {0.125, 0.05, 0};

Line(24) = {13,8};
Line(25) = {8,2};
Line(26) = {3,11};
Line(27) = {11,15};
Line(28) = {28,13};
Line(29) = {14,9};
Line(30) = {9,5};
Line(31) = {6,12};
Line(32) = {12,16};
Line(33) = {30,14};

Line(34) = {11,10};
Line(35) = {10,12};
Line(36) = {10,4};
Line(37) = {8,7};
Line(38) = {7,9};
Line(39) = {7,1};

Line(40) = {28,2};
Line(41) = {28,27};
Line(42) = {27,3};
Line(43) = {27,15};
Line(44) = {5,30};
Line(45) = {30,29};
Line(46) = {6,29};
Line(47) = {29,16};

// Create Structured Mesh

Transfinite Line {34,37,41,1,2,3,4,8,9,10,11} = 3*p Using Progression 1;
Transfinite Line {35,45,38,7,4,5,6,12,13,14,15} = 3*p Using Progression 1;

Transfinite Line {17,16,19,18} = p Using Progression 1;
Transfinite Line {20,23,22,21} = p Using Progression 1;
Transfinite Line {24,40,42,27} = p Using Progression 1;
Transfinite Line {29,44,46,32} = p Using Progression 1;
Transfinite Line {28,25,39,30,33} = 3*p Using Progression 1;
Transfinite Line {43,26,36,31,47} = 3*p Using Progression 1;

Curve Loop(3) = {8,16,1,-17};
Curve Loop(4) = {11,17,2,-18};
Curve Loop(5) = {10,18,3,-19};
Curve Loop(6) = {9,19,4,-16};
Curve Loop(7) = {12,23,7,-20};
Curve Loop(8) = {15,20,-4,-21};
Curve Loop(9) = {14,21,5,-22};
Curve Loop(10) = {13,22,6,-23};

Plane Surface(3) = {3};
Plane Surface(4) = {4};
Plane Surface(5) = {5};
Plane Surface(6) = {6};
Plane Surface(7) = {7};
Plane Surface(8) = {8};
Plane Surface(9) = {9};
Plane Surface(10) = {10};

Curve Loop(11) = {-25,37,39,1};
Curve Loop(12) = {-39,38,30,7};
Curve Loop(13) = {-3,26,34,36};
Curve Loop(14) = {-5,-36,35,-31};
Curve Loop(15) = {-24,-28,40,-25};
Curve Loop(16) = {-40,41,42,-2};
Curve Loop(17) = {-42,43,-27,-26};
Curve Loop(18) = {-46,31,32,-47};
Curve Loop(19) = {-44,-6,46,-45};
Curve Loop(20) = {29,30,44,33};

Plane Surface(11) = {11};
Plane Surface(12) = {12};
Plane Surface(13) = {13};
Plane Surface(14) = {14};
Plane Surface(15) = {15};
Plane Surface(16) = {16};
Plane Surface(17) = {17};
Plane Surface(18) = {18};
Plane Surface(19) = {19};
Plane Surface(20) = {20};

Transfinite Surface {3:20};
Recombine Surface{3:20};

Physical Surface(1) = {3:20};
Physical Line(0) = {8,9,10,11};
Physical Line(1) = {12,13,14,15};
Physical Line(2) = {33,45,47,43,41,28};
Physical Line(3) = {32,35,34,27};
Physical Line(4) = {24,37,38,29};

Mesh 2;