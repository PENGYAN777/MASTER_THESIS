// ===========================================
// ==================================MESH FILE
// ===========================================

h = 0.1;
H = 1;
// =====================================POINTS
Point(1) = {-18,0,0,h};
Point(2) = {0,0,0,h};
Point(3) = {2.1,0,0,h};
Point(4) = {2.1,3.25,0,h};
//Point(4) = {2.1,3.2765,0,h};
Point(5) = {0,3,0,h};
Point(6) = {-18,4,0,h};
Point(7) = {-10,3.25,0,h};
Point(8) = {60,0,0,H};
Point(9) = {60,3.25,0,H};
Point(10) = {60,6.5,0,H};
Point(11) = {2.1,6.5,0,H};
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
Line Loop(2) = {7,8,12,-3};
Line Loop(3) = {9,10,11,-12};


// =====================================SURFS

Plane Surface(1) = {1};
Plane Surface(2) = {2};
Plane Surface(3) = {3};

Physical Surface(1) = {1,2,3};
Physical Line("WALL") = {10,11,4,5};
Physical Line("INLET") = {6};
Physical Line("OUTLET") = {8,9};
Physical Line("SYMMETRY") = {1,2,7};


// 1: MeshAdapt, 2: Automatic, 3: Initial mesh only, 5: Delaunay, 6: Frontal-Delaunay, 7: BAMG, 8: Frontal-Delaunay for Quads, 9: Packing of Parallelograms
Mesh.Algorithm = 1;

//Mesh.RandomFactor = 1e-09;
