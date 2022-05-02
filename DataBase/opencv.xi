About OpenCV .
. Library of programming functions mainly aimed at 
  |real-time computer vision|.
. LIbrary used for video and [Image Processing].
. Written completely in [C++].
. The library has more than 2500 algorithms.

History .
. The OpenCV project was initially an Intel Research
  initiative to advance CPU-intense applications. part
  of series of projects including real-time ray tracing
  and 3D display walls.
. The main contributors to the project included a number
  of optimization experts in Intel Russia, as well as
  Intel's Performance Library Team.

Distribution .
. [BSD license] and hence free for both academic and 
  commercial use.

Tricks & Tips .
. Better no display images with this sequence of operations
  | cv2.imshow("Window Name", image)
  | cv2.waitKey(0)
  | cv2.destroyAllWindows

Methods .

  - imshow() .
  . Used to display an image in a window.
  . Window automatically fits to the image size.
  ! Should be followed by a call to {cv.waitKey} or {cv.pollKey}
    to perform GUI housekeeping tasks that are necessary to actually
    show the given image and make the window respond to mouse and
    keyboard events. Otherwise, `it won't display the image` and 
    `the window might lock up`.
    Parameters .
    * {i(string) winname}
      . name of the window.
    * {i(ndarray) img}
      . image to be shown.

  - waitKey() .
  . Waits for a pressed key.
    Parameters .
    * {i(int) delay = 0}
      . Delay in milliseconds.
      . 0 is the special value that means "forever".

  - destroyAllWindows() .
  . Destroy all the HighGUI windows.
  ! No parameters.

  . destroyWindow() .
  . Destroys the specified window.
    Parameters .
    * {i(string) winname}
      . name of the window to be destroyed

  - createTrackBar() .
  . Creates the progressbar and attaches it to the specified
    window.
    Parameters .
    * {i(string) trackbarname}
      . name of the created trackbar.
    * {i(string) winname}
      . name of the window that will be used as a parent of
        the created trackbar.
    * {i(int) thresh}
      . initial threshold.
    * {i(int) max_thresh}
      . maximal position of the slider.
    * {i(*void) callback = 0}
      . pointer to the function to be called every time the slider
        changes position.
      . Callback functions are used to react to some kind of signal,
        in our case it's trackbar's state change.
      . All changes should happen in {callback} function that can be
        called as.
      | callback(thresh)

  - getTrackBarPos() .
  . Returns the current position of the specified trackbar.
    Parameters .
    * {i(string) trackbarname}
      . name of the trackbar.
    * {i(string) winname}
      . name of the window that will be used as a parent of
        the created trackbar.

  - Canny() .
  . Finds edges in an image using the [Canny edge detection] algorithm
    with custom image gradient.
  . The smallest value between {threshold1} and {threshold2} is used for edge
    linking.
  . The largest value between {threshold1} and {threshold2} is used to find
    initial segments of strong edges.
    Parameters .
    * {i(ndarray) img}
      . input image to which Canny filter will be applied.
    * {i(double) threshold1}
      . lower threshold value in Hysteresis Thresholding. 
    * {i(double) threshold2}
      . Upper threshold value in Hysteresis Thresholding.
    * {i(int) apertureSize = 3}
      . Aperture size of the Sobel filter used to calculate the gradient
        in the Canny algorithm.
      . This value should be odd between 3 and 7.
      . Greater Aperture size helps to detect more detailed features.
    * {i(bool) L2gradient = false}
      . Used for more precision in calculating Edge Gradient
    Returns .
    * {o(ndarray) edges}
       edges image.

  - approxPolyDP() .
  . approximates a polygonal curve(s) with the specified precision.
    Parameters .
    * {i(ndarray) curve}
      . input vector of points.
      . can be contour from [contours]
    * {i(double) epsilon}
      . specifies approximation accuracy.
      . maximum distance between the original curve and its approximation.
    * {i(bool) closed}
      . If true, the approximated curve's first and last vertices are connected.
    Returns .
    * {i(ndarray) src}

  - boundingRect() .
  . Calculates the up-right bounding rectangle of a point set or 
    `non-zero pixels of gray-scale image`.
    Parameters .
    * {i(ndarray) curve}
      . input vector of points.
      . can be contour from [contours].
    Returns .
    * {o(ndarray) rect}
      . output rectangle in for of array.
        | [x][y][w][h]
      . where x - x coordinate of initial point.
      .       y - y coordinate of initial point.
      .       w - width of the rectangle.
      .       h - height of the rectangle.

  - rectangle() .
  . Draws a simple, thick, or filled up-right rectangle on {image}.
    Parameters .
    * {i(ndarray) img}
      . image to draw rectangle on.
		* {i(Point) pt1}
      . vertex of the rectangle.
		* {i(Point) pt2}
      . vertex of the rectangle opposite to {pt1}
		* {i(color)  	color}
      . rectangle color or brightness (grayscale image).
		* {i(int) thickness = 1}
      . thickness of lines that make up the rectangle.
      . Negative values, like |FILLED|, mean that the function has to
        draw a filled rectangle.
		* {i(int) lineType = LINE_8}
      . Type of the line.
		* {i(int) shift = 0}
      ? Number of fractional bits in the point coordinates.


  - cvtColor() .
  . Used to convert an image from one color space to another.
    Parameters .
    * {i(ndarray) src}
      . source image.
    * {i(int) code}
      . Color Conversion Code.
    * {i(ndarray) dst}
      . destination image (optional).
    * {i(int) dstCn=0}
      . It is the number of channels in the destination image.
      . If the parameter is 0 then the number of the channels
        is `derived automatically` from src and code.
    Returns .
    * {o(ndarray) dst}
      . destination image.

  - threshold() .
  . Applies a fixed-level [thresholding] to each array element.
    Parameters .
    * {i(ndarray) src}
      . source image.
    * {i(double) thresh}
      . value of Threshold in respect to which pixel values will
        change accordingly.
    * {i(double) maxval}
      . Maximum value that can be assigned to pixel.
    * {i(int) type}
      . The type from [thresholding#types of thresholding] to
        be applied.
    Returns .
    * {o(double) ret}
      . RetVal which is used in Otsu's Binarization.
      . It replaces the global thresholding value by the determined
        by Otsu's Binarization. This only works when Otsu's binarization
        is used.
    * {o(ndarray) dst}
      . destination image.

  - findContours() [#1] .
  . Finds [contours] in a binary image.
    Parameters .
    * {i(ndarray) image}
      . source image.
    * {i(int) mode}
      . [Contours#Retrieval Modes]
    * {i(int) method}
      . [Contours#Approximation Modes]
    * {i(?) offset=?}
      . `Optional` offset by which every contour point is shifted.
        This is useful if the contours are extracted from the image
        ROI and then they should be analyzed in the whole image context.
    Returns .
    * {o(ndarray of ndarrays) contours }
      . found contours.
    * {o(ndarray) hierarchy}
      . [Contours#hierarchy]
      . Shows how various contours are linked to each other, their
        relation with other contours, Parent Child relation.

  - drawContours() .
  . Used to draw any shape provided you have its boundary points.
  . Draws contours outlines or filled contours.
    Parameters .
    * {i(ndarray) src}
      . source image.
    * {i(ndarray of ndarrays) contours }
      . contours to draw on image.
    * {i(int) contourIdx}
      . Parameter indicating a contour to draw.
      . If negative, all the contours are drawn.
    * {i(color) color}
      . contour color.
      . can be represented as a tuple, eg. (0,255,0).
    * {i(int) thickness = 1} 
      . thickness of the contour.
    * {i(int) lineType = LINE_8}
    * {i(ndarray) hierarchy = noArray()}
      . Optional information about hierarchy.
      . It is only needed if you want to draw only some of the contours
        (see maxLevel). 
    * {i(int) maxLevel = INT_MAX}
      . Maximal level for drawn contours.
      . If it is 0, only the specified contour is drawn.
      . If it is 1, the function draws the contour(s) and all the
        nested contours.
        If it is 2, the function draws the contours, all the nested
        contours, all the nested-to-nested contours, and so on.
        This parameter is only taken into account when there is hierarchy
        available. 
    * {i(?) offset=?}



Useful resources .
. [https://docs.opencv.org/3.4/d8/d01/group__imgproc__color__conversions.html].
. [https://medium.com/@pragyatomar1611/thresholding-in-opencv-a60c134437c2].

References .
[1#] [https://medium.com/analytics-vidhya/opencv-findcontours-detailed-guide-692ee19eeb18].