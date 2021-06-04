// ==================================MESH FILE

h = 0.3;

// =====================================POINTS
Point(1) = {0,0,0,h};
Point(2) = {65,0,0,h};
Point(3) = {65,6.5,0,h};
Point(4) = {0,6.5,0,h};
Point(5) = {0,3.25,0,h};

// =====================================CURVES
Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,5};
Line(5) = {5,1};

// =====================================LOOPS
Line Loop(1) = {1,2,3,4,5};
Plane Surface(1) = {1};

// =====================================SURFS


Physical Surface(1) = {1};
Physical Line("WALL") = {3,4};
Physical Line("INLET") = {5};
Physical Line("OUTLET") = {2};
Physical Line("SYMMETRY") = {1};


// 1: MeshAdapt, 2: Automatic, 3: Initial mesh only, 5: Delaunay, 6: Frontal-Delaunay, 7: BAMG, 8: Frontal-Delaunay for Quads, 9: Packing of Parallelograms
Mesh.Algorithm = 1;

//Mesh.RandomFactor = 1e-09;
