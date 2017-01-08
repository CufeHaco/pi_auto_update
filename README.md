# pi_auto_update
This script is to automate the RPI update process for arcade, retropie, media center builds.  but will work for any rpi project
Auto_update.rb was written by Troy B. Mallory on Jan 8, 2017

INSTRUCTIONS:
after cloning, nano /etc/rc.local and add
ruby 'home/pi/pi_auto_update/Auto_update.rb' &


HOW IT WORKS:
Auto _update will work when the specifyed day and time and the pi is in the main CLI.
leave the pi on in the CLI before hand on the specifyed day.  after Updating the pi
will reboot and system settings will contenue (boot settings like autobooting retropie will 
work like normal)
As a failsafe,  the Script will only run in the CLI and not in a OS env. meaning
the script will only work when the pi is in the CLI, allowing you to choose when you 
want the script to run.

By Default, the script is set to update the Pi at midnight on sundays. So anytime between
11:00 - 11:59 PM on Saturday, exit out of your OS into the CLI and the script will handle
the rest.  Instructions to change the day and time are found in the Auto_update.rb script

to modify day and time:
nano /home/pi/pi_auto_update/Auto_update.rb
