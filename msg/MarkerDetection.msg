# This expresses a marker/fiducial detection
std_msgs/Header header                  # timestamp in the header is the acquisition time and frame

float32 distance_min           # distance minimum range value [m]
float32 distance_max           # distance maximum range value [m]
float32 distance_max_id        # distance maximum range value to detect id [m]
                               # not used for markers without id

geometry_msgs/Quaternion view_direction       # view direction
float32 fov_horizontal                        # field of view horizontal [rad]
float32 fov_vertical                          # field of view vertical [rad]

string   type                  # marker type used (bch, artag, mip_36h12, reflectors, stage, ...)
marker_msgs/Marker[] markers               # detected markers
