# ask user input for meeting code
read -p "Enter your meeting code: " meetingnumber
echo "Your meeting code: $meetingnumber"


# ask user when class starts and ends
#read -p "Enter when your class starts: " startclass
#read -p "Enter when your class ends: "  endclass


open "zoommtg://zoom.us/join?confno=$meetingnumber"

#pkill zoom
