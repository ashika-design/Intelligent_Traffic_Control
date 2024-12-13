
Introduction:
Now a day’s need to control traffic, which have junction places. For that purpose traffic departments 
are provide new European model. In generally many traffic signals are operates on a timing 
mechanism that changes the light after given time interval. The traffic signal system consists of three 
important parts, in that traffic light controller is first one. Because of it represent brain of the traffic 
system. Many traffic light systems operate on a timing mechanism that changes the lights after a 
given interval. An intelligent traffic light system senses the presence or absence of vehicles and 
reacts accordingly. The idea behind intelligent traffic systems is that drivers will not spend 
unnecessary time waiting for the traffic lights to change. An intelligent traffic system detects traffic in 
many different ways.

Traffic Light Control: 
The traffic signal system consists of three important parts. The first part is the controller, which 
represents the brain of the traffic system.
![Screenshot (306)](https://github.com/user-attachments/assets/6f7a3fdb-3a8c-48ac-a07a-a2b614122916)

It consists of a computer that controls the selection and timing of traffic movements in accordance to 
the varying demands of traffic signal as registered to the controller unit by sensors. The second part 
is the signal visualization or in simple words is signal face. Signal faces are part of a signal head 
provided for controlling traffic in a single direction and consist of one or more signal sections. These 
usually comprise of solid red, yellow, and green lights. The third part is the detector or sensor. The 
sensor or detector is a device to indicate the presence of vehicles. One of the technologies, which 
are used today, consists of wire loops placed in the pavement at intersections. They are activated by 
the change of electrical inductance caused by a vehicle passing over or standing over the wire loop. 
Recent technology utilization is video detection. A camera feeds a small computer that can "see" if a 
vehicle is present. 
In order to implement the Intelligent Traffic Signal Simulator, one needs to setup and assemble the 
hardware components and write a program to control the intelligent traffic signal simulator. The 
layout of the Intelligent Traffic Signal Simulator is displayed in Figure 1. The blocks, which are labeled 
N1, N2, N3, E1, E2, E3, S1 and W1 are the infrared object detectors.
![Screenshot (307)](https://github.com/user-attachments/assets/e594b175-3011-4904-b6a1-74f81f0f2718)


It is often useful to be able to sequence through an arbitrary number of states, staying in each state 
an arbitrary amount of time. For example, consider the set of traffic lights shown in Figure 2. The 
lights are assumed to be at a four-way intersection with one street going northsouth and the other 
road going east-west. The Lab VIEW programming is done in the diagram using graphical source 
code. In the block diagram the program runs from left to right. If the green light in the traffic model 
does not illuminate, the system goes into default since there is no input into the system. The signal 
from the sensor is acquired through the DAQ, which is connected, to the computer.
Design Process of Traffic Light Controller: 
A single 3-lamp traffic light is considered as a finite state machine. It has three states, Red, Yellow, 
and Green, which are also the outputs. A single input for the traffic light is defined, with values 0 for 
no change and 1 for change. This input is connected to the output of a countdown timer, which 
outputs a 1 when it reaches zero. Thus for a single light, we can draw the state transition diagram as 
shown in Figure 3. 
To simulate these traffic lights we will use the red, yellow, and green LEDs connected to ld[7:2] on the 
BASYS board and cycle through the six states shown in Table 1.
![Screenshot (308)](https://github.com/user-attachments/assets/d4bc3e46-8fda-43ca-88f5-379ba1b1dccb)


A state diagram for controlling these traffic lights is shown in Figure 3. If we use a 3 Hz clock to drive 
this state diagram then a delay of 1 second is achieved by staying in a state for three clock cycles. 
Similarly, a delay of 5 second is achieved by staying in a state for fifteen clock cycles. The count 
variable in Figure 3 will be reset to zero when moving to the next state after a timeout.

![Screenshot (309)](https://github.com/user-attachments/assets/7e4bbc17-a75e-42f7-aeef-7af27650108a)




