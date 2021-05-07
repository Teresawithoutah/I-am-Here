
# ask user input for meeting code
read -p "Enter your meeting code: " meetingnumber
echo "Your meeting code: $meetingnumber"

read -p "Enter when your class ends in the format 00:00 " endclass
echo "We will close your meeting at $endclass"

# ask user when class starts and ends
#read -p "Enter when your class starts: " startclass
#echo "We will close your meeting at $endclass"

open "zoommtg://zoom.us/join?confno=$meetingnumber"

while true
do
  NOW=$(date +"%H:%M")
  echo "Waiting for class to end..."
  if [ $NOW = $endclass ]
  then
    #ps aux | grep -i zoom
    pkill zoom
  fi
done
