#Buoc 1. Mo firefox truoc
#Buoc 2. ./name.sh
#Buoc 3. Click chuot len tab youtube
firefox https://www.youtube.com/watch?v=PJcyj6SL6tM
views=1
until [ $views -gt 300 ]
do
xdotool key "Ctrl+r"
sleep 60s
echo $views
((views++))
done
#echo All done
