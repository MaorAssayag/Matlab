# Mathlab

# Floating Point Convertor 


* After searching the internet, i couldn't find a complete code for convert any number to a floating point arithmetic for any base and number of bits (in matlab) - so i code that.
* ignore any mention of ML1 or MantisaLarger1 VARIABLES (its there to handle input that cant be represent in n bits of mantisa) [floaatingPoint & toBits functions].
* This code is my first introduction to matlab - I am fully aware that isn't optimized, not using any special functions or syntax - but it will give you a good idea where to start.
* <a href="https://en.wikipedia.org/wiki/Floating-point_arithmetic">floating point theroy in wiki</a>
* floating point = ![alt text](https://wikimedia.org/api/rest_v1/media/math/render/svg/1d3df0e2c38ef77dd2cd42114520079bd76b6670) for example ![alt text](https://wikimedia.org/api/rest_v1/media/math/render/svg/ae814346939ac31086e1d0286c41d98e6b053102)

    <a href="https://github.com/MaorAssayag/Mathlab/tree/master/floating_point">code example</a>

#

# The Jacobi and Gauss-Seidel Iterative Methods

 * Iterative schemes require time to achieve sufficient accuracy and are reserved for large systems of equations where there
 are a majority of zero elements in the matrix. Often times the algorithms are taylor-made to take advantage of the special
 structure such as band matrices.  Practical uses include applications in circuit analysis, boundary value problems and partial
 differential equations, <a href="https://en.wikipedia.org/wiki/Gauss%E2%80%93Seidel_method">more info</a>.
 
 * Consider that the n×n square matrix A is split into three parts, the main diagonal D, below diagonal L and above diagonal U. 
    We have  A = D - L - U.
    
    ![alt text](https://github.com/MaorAssayag/Mathlab/blob/master/The%20Jacobi%20and%20Gauss-Seidel%20Iterative%20Methods/pngs/matrix.PNG) 
    
 * Definition (Diagonally Dominant).  The matrix  [Graphics:Images/GaussSeidelMod_gr_5.gif]  is strictly diagonally dominant if
 
    ![alt text]( https://wikimedia.org/api/rest_v1/media/math/render/svg/2a65bb601278a56b9883c70dd0309b3c9eec43a2) 
 
 ### Theorem - Jacobi Iteration
 * The solution to the linear system   can be obtained using iteration scheme 
 A sufficient condition for the method to be applicable is that A is strictly diagonally dominant or diagonally dominant and
 irreducible.  
 
 ![alt text](https://github.com/MaorAssayag/Mathlab/blob/master/The%20Jacobi%20and%20Gauss-Seidel%20Iterative%20Methods/pngs/jacobe.png) 
 
   <a href="https://github.com/MaorAssayag/Mathlab/blob/master/The%20Jacobi%20and%20Gauss-Seidel%20Iterative%20Methods/jacobe.m">code example</a>
 
  ### Theorem - Gauss-Seidel Iteration
 * The solution to the linear system   can be obtained using iteration scheme 
 A sufficient condition for the method to be applicable is that A is strictly diagonally dominant or diagonally dominant and irreducible. 
 
 ![alt text](https://github.com/MaorAssayag/Mathlab/blob/master/The%20Jacobi%20and%20Gauss-Seidel%20Iterative%20Methods/pngs/gauss.PNG) 
 
   <a href="https://github.com/MaorAssayag/Mathlab/blob/master/The%20Jacobi%20and%20Gauss-Seidel%20Iterative%20Methods/gauss_seidel.m">code example</a>

