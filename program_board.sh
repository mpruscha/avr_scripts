
sudo python ../scripts/trigger_bootloader.py /dev/ttyACM0

sleep 2

#avrdude -p m32u4 -P /dev/ttyACM0 -c arduino -U flash:w:my_program.hex:a
sudo avrdude -c avr109 -p atmega32u4 -b 57600 -P /dev/ttyACM1 -D -V -U flash:w:my_program.hex:i

