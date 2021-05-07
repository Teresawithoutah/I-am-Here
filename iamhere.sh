
# ask user input for meeting code
read -p "Enter your meeting code: " meetingnumber
echo "Your meeting code: $meetingnumber"

read -p "Enter when your class ends in the format 00:00 " endclass
echo "We will close your meeting at $endclass"

# ask user when class starts and ends
#read -p "Enter when your class starts: " startclass
#echo "We will close your meeting at $endclass"

open "zoommtg://zoom.us/join?confno=$meetingnumber"

echo "Waiting for class to end..."

endclass_h="${endclass%%:*}"
endclass_m="${endclass##*:}"

sleep $(( endclass_h*3600 + endclass_m*60 - $(date +"%H*3600 - (10#%M*60 + 10#%S)") ))
pkill zoom
