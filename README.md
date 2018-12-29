# CO-Detector-Hack

The CO detector is changed into a line voltage monitor.
Youtube series starts here :\
https://www.youtube.com/watch?v=D2GUg23yEJs

Circuit changes:\
I removed the 51k and 330k connected to the half wave AC diode.\
I cut the etch connecting the battery to the 120 ohm resistor in the battery voltage detect circuit.\
I jumpered the anode of the half wave diode to the 120 ohm resistor.\
I changed the capacitor on the anode of the diode to 1nf.\
I removed the 51 ohm resistor and replaced it with a 10nf capacitor.\
I cut an etch and put 8.2k ohm in series with the 510 ohm resistor connected to pin 10 of the 16f883.\
I cut an etch and put a 100 ohm resistor in series with pin 2 of the 16f883.

The program was written for a simplistic C compiler.  It could be adapted for other programming tools with some
work.
 
