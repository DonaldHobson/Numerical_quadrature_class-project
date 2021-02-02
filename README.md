# Numerical_quadrature_class-project
 C++ code that can numerically evaluate an integral, parallelized using MPI, plus a few graphs ect of performance.
 
 Read Writeup.txt and look at the graphs if you want to see fairly obvious conclusions about the code runs faster on more processors.
 
 Change the function f and the array ab in the .cpp code if you want to numerically integrate something else.
 The quadrature method used is based on 5 points aranged in an X. If the square being intefrated is (-1,-1) to (1,1) then the center of the X is at (0,0) and the other points are at (+-a, +-a) where a=squrt(3/5) with 4/9 weight on the center and 5/35 weight on the edges. I don't know if it is a standard scheme because I made it up. It Is accurate up to order O(x^6) or O(x^2*y^2). In other words, when evaluated on x^a*y^b, this scheme is exact as long as max(a,b)<6 and min(a,b)<2.
