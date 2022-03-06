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

Methods .
  - cvtColor .
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

  - threshold .
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

  - findContours [#1] .
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

  - drawContours .
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