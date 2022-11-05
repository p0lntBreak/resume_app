# resume_app

Stage 2 Task

## Code Base
The code starts with importing the materials package from flutter which is a catalog of commonly
used widgets in flutter material design.

There are two dart files, main.dart and nav_bar.dart.
main.dart is where the homepage is created using a stateful widget.
nav_bar.dart has the Navigation menu sidebar
The stateful widget which allows widgets to change overtime is used due to the dark mode and language requirements
specified in the task. Two themes are declared for light and dark modes with primary swatch colors.

All major containers are wrapper in a column widget
Container 1 has 2 child containers in a row
Container 2 has just a text as a child widget
Container 3 has just a text as a child widget

The social media links are wrapped in a row widget with 5px distance


## Design
First widget is an appbar with the title 'resume'
To the left is a Navigation Menu Bar
To the right is a toggle button for light and dark modes
Colors:

Appbar - #1A237E
#### Container 1 - fromARGB(40, 175, 184, 189)
#### Container 2 - fromARGB(99, 158, 170, 177)
#### Container 3 - fromARGB(103, 175, 184, 189)

The entire body is wrapped around a SingleChildScrollView widget to allow scrolling in landscape and portrait modes
There is a 10px padding on all sides of the the body which houses 3 major containers arranged in a column.

Border radius for the containers - 30px
Text and Picture padding - 20px

font style - Roboto
## Libraries
package:flutter/material.dart
package:url_launcher/url_launcher.dart - not implemented

## Future Updates
-Add some animated widgets for interactions which is completely missing from the app
- improve the landscape view
- Add contents for the items in the navigation bar
- Add a sign in page



## Challenges and Solutions
Challenge 1: Light and dark modes -:
Initially the modes were only applying to the appbar and the colors were switching from blue to red. 
Figured out it was due to the primary swatch colors I had initially declared for easy readability when switching modes.

Challenge 2: Getting the iconButtons to work  was an issue. The url package launcher was giving an error
"MissingPluginException "No implementation found for method" in path_provider". couldn't solve it. Swithed to using a 
Link widget for parsing the url links and it worked.

Challenge 3: Couldn't get the contents to scroll when in landscape mode.
I wrapped the body in a SingleChildScrollViewWidget and that solved it


### apk link
https://drive.google.com/file/d/1-3pSbBLW74v-wPIx27LwR1Dwoem1tCAO/view?usp=share_link

### appetize.io
https://appetize.io/app/najuoyql3nwn3kgtuwwyjoswlq?device=pixel4&osVersion=12.0&scale=75
