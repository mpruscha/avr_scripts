sudo chmod 777 /dev/ttyACM0

screen -dm -S "arduino_micro_reset" /dev/ttyACM0 9600 
screen -X -S "arduino_micro_reset" kill

sleep 0.1

screen -dm -S "arduino_micro_reset" /dev/ttyACM0 1200,cs8 
screen -X -S "arduino_micro_reset" kill

sleep 0.1

sudo avrdude -c avr109 -p atmega32u4 -b 57600 -P /dev/ttyACM0 -D -V -U flash:w:VirtualSerial.hex:i
