// ==================================MESH FILE
f = 6.5;
H = 0.1;
h = 0.02;

// =====================================POINTS
Point(1) = {0,0,0,h};
Point(2) = {65/f,0,0,h};
Point(3) = {65/f, 3.25/f, 0, h };
Point(4) = {65/f,16.25/f,0,H};
Point(5) = {0,16.25/f,0,H};
Point(6) = {0,3.25/f,0,h};

// =====================================CURVES
Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,6};
Line(4) = {6,1};
Line(5) = {3,4};
Line(6) = {4,5};
Line(7) = {5,6};


// =====================================LOOPS
Line Loop(1) = {1,2,3,4};
Plane Surface(1) = {1};
Line Loop(2) = {5,6,7,-3};
Plane Surface(2) = {2};

// =====================================SURFS


Physical Surface(1) = {1,2};
Physical Line("LEFT") = {7};
Physical Line("INLET") = {4};
Physical Line("OUTLET") = {2,5};
Physical Line("TOP") = {6};
Physical Line("SYMMETRY") = {1};
//Physical Line("FARFIELD") = {3};


// 1: MeshAdapt, 2: Automatic, 3: Initial mesh only, 5: Delaunay, 6: Frontal-Delaunay, 7: BAMG, 8: Frontal-Delaunay for Quads, 9: Packing of Parallelograms
Mesh.Algorithm = 1;

//Mesh.RandomFactor = 1e-09;
