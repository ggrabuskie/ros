#!/usr/bin/env python
# Software License Agreement (BSD License)
#
# Copyright (c) 2008, Willow Garage, Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
#  * Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#  * Redistributions in binary form must reproduce the above
#    copyright notice, this list of conditions and the following
#    disclaimer in the documentation and/or other materials provided
#    with the distribution.
#  * Neither the name of Willow Garage, Inc. nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# Revision $Id$

## Simple talker demo that published std_msgs/Strings messages
## to the 'chatter' topic

import rospy
import serial
import struct
from time import sleep, time
from std_msgs.msg import String
from rftest.msg import Mobility
ser = serial.Serial('/dev/ttyUSB0', 9600, timeout=None)

ser.setDTR(True) #if the extra pins on the ttl usb are connected to m0 & m1 on the ebyte module
ser.setRTS(True) #then these two lines will send low logic to both which puts the module in transmit mode 0
#take serial device, data to send
#return length of data sent OR -1 on error
def putRF(rf_uart, data): #arguments to make function more self-contained and function-like
    rf_uart.setDTR(True) #if the extra pins on the ttl usb are connected to m0 & m1 on the ebyte module
    rf_uart.setRTS(True) #then these two lines will send low logic to both which puts the module in transmit mode 0
    print("put at")
    print(time())
    rf_uart.write(b's'+data+b'f') #start byte + payload + stop byte
    rf_uart.flush() #waits until all data is written
    print("wrote")
    print(len(data))
    return len(data)


#take serial device, size of expected data in bytes
#return data received, OR -1 on error
def getRF(rf_uart, size_of_payload): #added argument to make it more function-like
    rf_uart.setDTR(True) #if the extra pins on the ttl usb are connected to m0 & m1 on the ebyte module
    rf_uart.setRTS(True) #then these two lines will send low logic to both which puts the module in transmit mode 0
    print("get at")
    print(time())
    print(rf_uart.in_waiting)
    while True:
        n = rf_uart.read(1) #read bytes one at a time
        #if not n:
        #    print("nothing in n")
        #    return 0
        if n == b's': #throw away bytes until start byte is encountered
            data = rf_uart.read(size_of_payload) #read fixed number of bytes
            n = rf_uart.read(1) #the following byte should be the stop byte
            if n == b'f':
                print('success')
                print(data)
                return data
            else: #if that last byte wasn't the stop byte then something is out of sync
                print("failure")
                return -1
        #else:
        #    continue #if first byte doesn't match keep tossing bytes til they match
    return 0


def talker():
    pub = rospy.Publisher('telecommand', Mobility, queue_size=1000)
    rospy.init_node('receive', anonymous=True)
    rate = rospy.Rate(1000000) # 1mhz
    msg = Mobility()

    while not rospy.is_shutdown():
        data = getRF(ser, 9)
        print("read")
        print(data)
        if((data != -1) and (data != 0)):
            print("received")
            mobility_string = struct.unpack('9b', data)
            print('unpacked')
            print(mobility_string)
            print(time())
            msg.left = mobility_string[0]
            msg.right = mobility_string[1]
            msg.j1 = mobility_string[2]
            msg.j2 = mobility_string[3]
            msg.j3 = mobility_string[4]
            msg.j4 = mobility_string[5]
            msg.j51 = mobility_string[6]
            msg.j52 = mobility_string[7]
            msg.mode = mobility_string[8]
            rospy.loginfo(msg)
            pub.publish(msg)
        timestamp = 0
        timestamp = time()
        packed = struct.pack('1I', timestamp)
        putRF(ser, packed)


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
