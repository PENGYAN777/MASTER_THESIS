// ===========================================
// ==================================MESH FILE
// ===========================================
f = 6.5;
h = 0.3/f;
H = 0.2/f;

// =====================================POINTS
Point(1) = {-15/f,0,0,h};
Point(2) = {-2.1/f,0,0,h};
Point(3) = {0,0,0,h};
Point(4) = {0,3.25/f,0,h};
//Point(4) = {0,3.2765,0,h};
Point(5) = {-2.1/f,3/f,0,h};
Point(6) = {-15/f,6/f,0,h};
Point(7) = {-8/f,4/f,0,h};
Point(8) = {65/f,0,0,H};
Point(9) = {65/f,3.25/f,0,H};
Point(10) = {65/f,6.5/f,0,H};
Point(11) = {0,6.5/f,0,H};
// =====================================CURVES

Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,5};
Spline(5) = {5,7,6};
Line(6) = {6,1};
Line(7) = {3,8};
Line(8) = {8,9};
Line(9) = {9,10};
Line(10) = {10,11};
Line(11) = {11,4};
Line(12) = {9,4};

// =====================================LOOPS

Line Loop(1) = {1,2,3,4,5,6};


Transfinite Line{3} = 40 Using Progression 1.05;
Transfinite Line{8} = 40 Using Progression 1.05;
Transfinite Line{7} = 200  Using Progression 1.05;
Transfinite Line{12} = 200 Using Progression 1/1.05;
Line Loop(2) = {7,8,12,-3};
Plane Surface(2) = {2};
Transfinite Surface{2};
Recombine Surface{2};

Line Loop(3) = {9,10,11,-12};


// =====================================SURFS

Plane Surface(1) = {1};
//Plane Surface(2) = {2};
Plane Surface(3) = {3};

Physical Surface(1) = {1,2,3};
Physical Line("WALL") = {10,11,4,5};
Physical Line("INLET") = {6};
Physical Line("OUTLET") = {8,9};
Physical Line("SYMMETRY") = {1,2,7};


// 1: MeshAdapt, 2: Automatic, 3: Initial mesh only, 5: Delaunay, 6: Frontal-Delaunay, 7: BAMG, 8: Frontal-Delaunay for Quads, 9: Packing of Parallelograms
Mesh.Algorithm = 1;

//Mesh.RandomFactor = 1e-09;
