@echo OFF
MicrosoftEdge https://www.youtube.com/watch?v=PJcyj6SL6tM
for /L %%i IN (1,1,300) DO (
	echo %%i
	xdotool.exe key "Control_L+R"
	timeout 60
)
shutdown -s -f -t 1
