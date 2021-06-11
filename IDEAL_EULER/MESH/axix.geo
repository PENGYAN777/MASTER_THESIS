// ===========================================
// ==================================MESH FILE
// ===========================================
f = 6.5;
h = 0.3/f;

// =====================================POINTS
Point(1) = {-15/f,0,0,h};
Point(2) = {65/f,0,0,h};
Point(3) = {65/f,6.5/f,0,h};
Point(4) = {0,6.5/f,0,h};
Point(5) = {0,3.25/f,0,h};
Point(6) = {-2.1/f,3/f,0,h};
Point(7) = {-8/f,4/f,0,h};
Point(8) = {-15/f,6/f,0,h};
// =====================================CURVES

Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,5};
Line(5) = {5,6};
Spline(6) = {6,7,8};
Line(7) = {8,1};
// =====================================LOOPS

Line Loop(1) = {1,2,3,4,5,6,7};



// =====================================SURFS

Plane Surface(1) = {1};

Physical Surface(1) = {1};
Physical Line("WALL") = {5,6};
Physical Line("FARFIELD") = {3,4};
Physical Line("INLET") = {7};
Physical Line("OUTLET") = {2};
Physical Line("SYMMETRY") = {1};


// 1: MeshAdapt, 2: Automatic, 3: Initial mesh only, 5: Delaunay, 6: Frontal-Delaunay, 7: BAMG, 8: Frontal-Delaunay for Quads, 9: Packing of Parallelograms
Mesh.Algorithm = 1;

//Mesh.RandomFactor = 1e-09;
