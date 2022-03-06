About scikit-image .
. Python library dedicated for [Image Processing].
. Largely written in [Python] with some core algorithms
  written in [Cython] to achieve performance.

Dependent packages .
. [Matplotlib] is used to display the transformed images
  and to perform image analysis.
. [Numpy] since images are usually represented as numpy
  arrays.

Scikit modules: .

  io .
  . Utilities to read and write images in various formats

    - imread .
    . {f(str) file path} is specified
    . used to input the image data exactly like the
      [Pandas#r ead_csv].

  metrics .
    
    - structural_similarity .
    . Compute the mean structural similarity index.
      
      Parameters .
      * {i(ndarray) im1}      
        . first image1 to compare.
      * {i(ndarray) im2}      
        . second image2 to compare.
      * {i(bool) gradient=False}
        . if True, return the gradient with respect to {im2}.
      ! {i(bool) full=False}   
        . if True, also return the full structural
          similarity image. 
      ? contains more arguments.
      
      Returns .
      * {o(float) mssim}
        . the mean structural similarity index over the
          image.
      * {o(ndarray) grad}
        . the gradient of the structural similarity between
          {im1} and {im2}.
        . Returned only if {gradient} is set to |True|.
      * {o(ndarray) S}
        . The full SSIM image.
        . Returned only if {full} is set to |True|