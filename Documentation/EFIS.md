# EFIS - Electrical flight instrument system

The EFIS of the Cesna Citation X  consists in 2 PDF, 2 ND and 1 EICAS. All 4 screens have the same dimensions, appox. 160x190 cm (WxH in vertical orientation) according to my measurement on the cockpit drawings extracted from the 3D model (read more in [[the mechanical section|Mechanical-design]]).

Is is possible to get the real ratio by looking at the property tree (/canvas/by-id/canvas[X]) : 900x1024 px i.e.1:1.14. 

## Which LCD screen to use ?
### 7-inch LCD screen for Raspberry-Pi on e-bay
There a plenty of small LCD screens on ebay. They cost approx. 20€ and have a display area that measures 86x154   mm. As the width is limited to 86 mm, the canvas will be 86x98 mm, only using 2/3 of the screen area.

In conclusion, if I use these 7-inch LCD, the canvas will be (ridiculously) small and use only 2/3 of the screen. For me, it does not worth spending 100 € for that result.

![7-inch LCD screen on ebay](Documentation/Images/s-l225.jpg)

![](Documentation/Images/EFIS.png)  
*On this picture, the PFD are full-size because displayed by a computer screen, and the EICAS is smaller because rendered on a 7-inch LCD screen. ND displayed are not shown*

### Computer screen
The second solution is to use two computer screens bought at my local dump shop. With their size, each can cover a PFD and a ND. For the EICAS in the middle, I will temporally opt for the 7-inch screen.

## How to display the canvas on the screens ?

[James Turner alias zakalawe](https://github.com/zakalawe) has developed a a standalone Qt program within the flightgear repository, that renders canvas. This program can be run on a separate computer, as long as it can connect to the computer running flightgear.

I have subtreed FGQCanvas [here](../../fgqcanvas).  

## Installation

When I started my project, the latest available version of Raspbian was Stretch.
Unfortunately, this version only shipped Qt 5.7 while FGQCanvas requires Qt 5.9
minimum since it calls QWindow.setFlag. I tried to cross-compile Qt 5.9, as 
James Turner did, following [these instructions ](https://wiki.qt.io/RaspberryPi2EGLFS)
but I did not succeded.

I waited July 2019 and the release of Raspbian Buster, shipping Qt 5.11.3.
Here is what I did:

 1. Download the *Raspbian Buster with desktop* image from [Raspbian webpage](https://www.raspberrypi.org/downloads/raspbian/).
 1. Copy the image using  
  ``sudo dd bs=1M if=2019-07-10-raspbian-buster.img of=/dev/sde conv=fsync``  
  beware that I have used a 1Mb block, 4M did not work for me, the card was not booting
 1. Copy my private ssh keys in order to be able to clone my subtree of the fgqcanvas util of flightgear  
  ``git clone git@github.com:adessein/fgqcanvas.git``  
 1. In order to be able to compile I had to install the following packages  
  ``sudo apt-get install qt5-default qtdeclarative5-dev libqt5websockets5-dev qtdeclarative5-private-dev qtbase5-private-dev``
 1. And then
  ``qmake fgcanvas.pro && make``

Because I was connecting from ss

The mockup/configurations are saved as JSON files in the folder ``~/.local/share/FlightGear/FGCanvas``

```
{
    "canvases": [
        {
            "path": "/canvas/by-index/texture[10]",
            "rect": [
                53,
                21,
                338,
                508
            ],
            "url": "ws://localhost:8080/PropertyTreeMirror/canvas/by-index/texture[10]"
        },
        {
            "path": "/canvas/by-index/texture[12]",
            "rect": [
                699,
                620,
                401,
                555
            ],
            "url": "ws://localhost:8080/PropertyTreeMirror/canvas/by-index/texture[12]"
        },
        {
            "path": "/canvas/by-index/texture[12]",
            "rect": [
                397,
                21,
                338,
                437
            ],
            "url": "ws://localhost:8080/PropertyTreeMirror/canvas/by-index/texture[12]"
        }
    ],
    "configName": "test",
    "window-rect": [
        2263,
        518,
        1397,
        642
    ],
    "window-state": 0
}
```
