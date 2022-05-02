Canny Edge Detection algorithm .
  4 Major Steps .
  * Reduce Noise using Gaussian Smoothing.
  * Compute image gradient using Sobel filter.
  * Apply Non-Max Suppression of NMS to just jeep the
    local maxima.
  * Finally, apply Hysteresis thresholding which that
    2 threshold values {T_upper} and {T_lower} which
    is used in the [opencv#Canny()] function.

Useful resources .
. Canny Algorithms - [https://habr.com/ru/post/114589/].
. Canny function - [https://www.geeksforgeeks.org/python-opencv-canny-function/].