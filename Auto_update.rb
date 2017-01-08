#===============================================================================================================================
#this script was written by Troy B. Mallory on Jan. 8, 2017
#                                               AUTO_UPDATE.RB VERSION 1.0
#===============================================================================================================================
class String
  # colorization
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end
  def green
    colorize(32)
  end

  def yellow
    colorize(33)
  end
end
#==============================================================================================================================
#This portion is to display the scheduled update.  If day and time is changed,
# change SUNDAYS, AT 12:00 AM. for proper display
#==============================================================================================================================
def update_notice
	puts ''
	puts ''
	puts '                         ============================================'.yellow
	puts "                          YOUR RASPBERRY PI WILL UPDATE ON".yellow ; 
        puts "                                 SUNDAYS, AT 12:00 AM.".green
	puts '                         ============================================'.yellow
end
update_notice
#==============================================================================================================================
#This portion sets the conditions to when the Pi will update. Default is Sunday at Midnight.
# to change the day, timed.wday == 0 (0 <=sun, 1 <=mon, 2, <=tue,... 6<=sat)
# to change hour timed.hour == 00 (00 = midnight, 01 = 1AM, 13 = 1 PM, states UTE format)
# to change minute timed.min == 00 (range from 00 - 59)
# to change seconds timed.sec == 00 (range from 00 - 59
#==============================================================================================================================

def auto_update
 
	loop do
		timed = Time.new
		1.times{Time.new ; sleep(1)}
		if timed.wday == 0 and timed.hour == 00 and timed.min == 00 and timed.sec == 00
			system 'sudo apt-get update && sudo apt-get -y upgrade' ;
			system 'reboot'
			stop_auto_update = true
			break if stop_auto_update == true 
		end
	end
end
auto_update

#=============================================================================================================================
#END OF SCRIPT.  AUTO_UPDATE.RB VERSION 1.0
#wRITTEN BY TROY. B. MALLORY ON JAN 8, 2017
#=============================================================================================================================
