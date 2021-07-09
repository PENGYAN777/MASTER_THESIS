// ==================================MESH FILE

h = 0.5;

// =====================================POINTS
Point(1) = {0,0,0,h};
Point(2) = {65,0,0,h};
Point(3) = {65,3.25,0,h};
Point(4) = {65,6.5,0,h};
Point(5) = {0,6.5,0,h};
Point(6) = {0,3.25,0,h};

// =====================================CURVES
Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,5};
Line(5) = {5,6};
Line(6) = {6,1};
Line(7) = {3,6};

// =====================================LOOPS
//bmp = 0.1;
//Transfinite Line{1} = 100 Using Progression 1.05;
//Transfinite Line{7} = 100 Using Progression 1/1.05;
//Transfinite Line{2} = 40 Using Progression 1.05;
//Transfinite Line{6} = 40 Using Progression 1/1.05;

Line Loop(1) = {1,2,7,6};
Plane Surface(1) = {1};
//Transfinite Surface{1};
//Recombine Surface{1};

//Transfinite Line{4} = 100 Using Progression 1/1.05;
//Transfinite Line{3} = 40 Using Progression 1.05;
//Transfinite Line{5} = 40 Using Progression 1/1.05;

Line Loop(2) = {3,4,5,-7};
Plane Surface(2) = {2};
//Transfinite Surface{2};
//Recombine Surface{2};

// =====================================SURFS


Physical Surface(1) = {1,2};
Physical Line("WALL") = {4,5};
Physical Line("INLET") = {6};
Physical Line("OUTLET") = {2,3};
Physical Line("SYMMETRY") = {1};


// 1: MeshAdapt, 2: Automatic, 3: Initial mesh only, 5: Delaunay, 6: Frontal-Delaunay, 7: BAMG, 8: Frontal-Delaunay for Quads, 9: Packing of Parallelograms
Mesh.Algorithm = 1;

//Mesh.RandomFactor = 1e-09;
