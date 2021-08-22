// ===========================================
// ==================================MESH FILE
// ===========================================

h = 0.2;
// =====================================POINTS
Point(1) = {-13,0,0,h};
Point(2) = {0,0,0,h};
Point(3) = {2.1,0,0,h};
Point(4) = {2.1,3.25,0,h};
Point(5) = {0,3,0,h};
Point(6) = {-13,8,0,h};
Point(7) = {-8,5,0,h};
// =====================================CURVES

Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,5};
Spline(5) = {5,7,6};
Line(6) = {6,1};

// =====================================LOOPS

Line Loop(1) = {1,2,3,4,5,6};



// =====================================SURFS

Plane Surface(1) = {1};


Physical Surface(1) = {1};
Physical Line("WALL") = {4,5};
Physical Line("INLET") = {6};
Physical Line("OUTLET") = {3};
Physical Line("SYMMETRY") = {1,2};


// 1: MeshAdapt, 2: Automatic, 3: Initial mesh only, 5: Delaunay, 6: Frontal-Delaunay, 7: BAMG, 8: Frontal-Delaunay for Quads, 9: Packing of Parallelograms
Mesh.Algorithm = 1;

//Mesh.RandomFactor = 1e-09;
