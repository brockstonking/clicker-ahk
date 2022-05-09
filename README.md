# clicker-ahk
<h1>Automated clicker that clicks a selected location on a selected minute interval</h1>

For this application to run, please <a href= "https://www.autohotkey.com/" target="_blank" >download</a> AHK (Auto Hot Key)

Clone this repository to your computer, then double click the .exe file to run.

The application will open with a window asking how often to repeat the click (does accept decimals of minutes if desired, e.g. .5 minutes will click every 30 seconds)

Once you have entered the desired click interval, click 'OK' to close the window. 

A second window will open asking you to click in the location you would like the application to click (see note).

Clicking anywhere on your screen will dismiss the window, and the application will now click in your selected location.

NOTE: If your setup includes multiple monitors, the click will occur on whatever screen your mouse is on. The click location records the (x,y) 
pixel location of the mouse. If your displays are different pixel sizes, the mouse will click in the same pixel location on each screen, meaning the pointer location
relative to the screen will be different between the displays
