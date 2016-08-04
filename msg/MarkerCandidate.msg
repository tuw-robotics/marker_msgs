# Time of image acquisition, camera coordinate frame ID
Header header    # Header timestamp should be acquisition time of image
                 # Header frame_id should be optical frame of camera
                 # origin of frame should be optical center of camera
                 # +x should point to the right in the image
                 # +y should point down in the image
                 # +z should point into the plane of the image
                 
# The distortion parameters, size depending on the distortion model.
# For "plumb_bob", the 5 parameters are: (k1, k2, t1, t2, k3).
float64[] cameraD

# Intrinsic camera matrix for the raw (distorted) images.
#     [fx  0 cx]
# K = [ 0 fy cy]
#     [ 0  0  1]
# Projects 3D points in the camera coordinate frame to 2D pixel
# coordinates using the focal lengths (fx, fy) and principal point
# (cx, cy).
float64[9]  cameraK # 3x3 row-major matrix

# possible ids of the detected fiducial (empty if no id could be identified)
int32[] ids

# confidence of the possible ids in [0, 1]
float64[] ids_confidence

# Array of object points in the object coordinate space.
geometry_msgs/Point[] objectPoints

# Array of corresponding image points. Point.z is not used.
geometry_msgs/Point[] imagePoints
