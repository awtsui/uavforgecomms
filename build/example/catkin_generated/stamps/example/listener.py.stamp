#!/user/bin/env python
import rospy
from example.msg import Telemetry

def callback(data):
    rospy.loginfo("Coordinates {}".format(data))

def listener():
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber('telem', Telemetry, callback)

    rospy.spin()

if __name__ == "__main__":
    listener()
