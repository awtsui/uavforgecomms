#!/usr/bin/env python3

import rospy
from example.msg import Telemetry

def talker():
    pub = rospy.Publisher('telem', Telemetry, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10)
    dummy_msg = {
            'x': 100,
            'y': 200,
            'z': 300,
            'alt': 50
        }
    while not rospy.is_shutdown():
        msg = Telemetry()
        msg.x = dummy_msg['x']
        msg.y = dummy_msg['y']
        msg.z = dummy_msg['z']
        msg.alt = dummy_msg['alt']
        log_str = 'Log: {}'.format(rospy.get_time())
        rospy.loginfo(log_str)
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

