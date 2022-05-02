About Contours .
. Curve joining all the continuous points (along the boundary), having
  some color or intensity.
. Useful tool for shape analysis, [object recognition] and detection.

! Advices .
. `For better accuracy`, use |binary images|. So before finding contours,
  apply |threshold| or |canny edge detection|.
. {cv.findContours()} Returns a modified image as the first of three return
  parameters.
! In [OpenCV], finding contours is like finding `white object` from `black`
  `background`.

Retrieval Modes .
  cv.RETR_EXTERNAL .
  . Retrieves only the extreme outer contours (no children).
  . It sets |{py}hierarchy[i][2]=hierarchy[i][3] = -1| for all the contours. 
  cv.RETR_LIST .
  . Retrieves all of the contours without establishing any hierarchical
    relationships only {next} and {previous}.
  . Counts contours from inside to outside. 
  cv.RETR_CCOMP .
  . Retrieves all of the contours and organizes them into a two-level hierarchy.
  . At the top level, there are external boundaries of the components.
  . At the second level, there are boundaries of the holes.  
  . If there is another contour inside a hole of a connected component, it is
    still put at the top level.
  cv.RETR_TREE .
  . retrieves all of the contours and reconstructs a full hierarchy of nested
    contours. 
  cv.RETR_FLOODFILL .

Approximation Modes .
  cv.CHAIN_APPROX_NONE .
  . Stores absolutely all the contour points.
  . That is, any 2 subsequent points (x1,y1) and (x2,y2) of the contour will
    be either horizontal, vertical or diagonal neighbors, that is,
    max(abs(x1-x2),abs(y2-y1))==1.
  cv.CHAIN_APPROX_SIMPLE .
  . Compresses horizontal, vertical, and diagonal segments and leaves only
    their end points.
  . For example, an up-right rectangular contour is encoded with 4 points. 
  cv.CHAIN_APPROX_TC89_L1 .
  . applies one of the flavors of the Teh-Chin chain approximation algorithm
  cv.CHAIN_APPROX_TC89_KCOS .
  . applies one of the flavors of the Teh-Chin chain approximation algorithm

Hierarchy .
. Shows how various contours are linked to each other, their relation with other
  contours, Parent Child relation in the form:
  | [Next, Previous First_Child, Parent]
