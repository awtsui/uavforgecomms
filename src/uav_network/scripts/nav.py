#!/usr/bin/env python
import rospy
from std_msgs.msg import String

class NavigatorPub():
    waypoints = [
            "abc",
            "def",
            "ghi",
            "jk",
            "lmn",
            "opq",
            "rst",
            "uvw",
            "xyz"
            ]

    def run(self):
        pub = rospy.Publisher('mission_nav', String)
        ropsy.init_node('navigator', anonymous=True)
        rate = rospy.Rate(1)
        index=0
        while not rospy.is_shutdown():
            msg = self.waypoints[index]
            index+=1
            if index == len(waypoints):
                index = 0

            rospy.loginfo(msg)
            pub.publish(msg)
            rate.sleep()

if __name__ == '__main__':
    try:
        nav = NavigatorPub()
        nav.run()
    except:
        pass

