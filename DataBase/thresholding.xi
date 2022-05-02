About Thresholding .
. Technique in [OpenCV]
. The simplest [image segmentation] method.

Thresholding Application Example [1#] .
. `Separate out regions of an image` corresponding to objects
  which we want to analyze.
. This separation is based on the variation of `intensity`
  between the `object pixels` and the `background pixels`.
. To differentiate the pixels we perform a comparison of each
  pixel intensity value with respect to a |threshold|.
. |threshold| is determined according to the problem to solve.
. Once we have separated properly the important pixels, we can
  set them with a any determined value (from 0 to 255) to 
  identify them.
 
Types of Thresholding [1#] .
! {src(x,y)} - coordinate of the pixel on image.
! {MaxVal} - predetermined maximum value (can be 255 for black).
! {thresh} - predetermined threshold.
  Threshold binary .
  | cv2.THRESH_BINARY
  . If the intensity of the pixel {src(x,y)} is higher than {thresh},
    then the new pixel intensity is set to a {MaxVal}. Otherwise, it is
    set to 0.
  Threshold Binary, Inverted .
  | cv2.THRESH_BINARY_INV
  . If the intensity of the pixel {src(x,y)} is higher than {thresh},
    then the new pixel intensity is set to a 0. Otherwise, it is set
    to {MaxVal}.
  Truncate .
  | cv.THRESH_TRUNC
  . The maximum intensity value for the pixels is {thresh}, if {src(x,y)}
    is greater, then its value is truncated.
  Threshold to Zero .
  | cv.THRESH_TOZERO
  . If {src(x,y)} is `lower` than {thresh}, the new pixel value will be set
    to 0.
  Threshold to Zero, Inverted .
  | cv2.THRESH_TOZERO_INV
  . If {src(x,y)} is `greater` than {thresh}, the new pixel value will be
    set to 0.

References .
[1#] [https://docs.opencv.org/3.4/db/d8e/tutorial_threshold.html].