# Interaction with the game

 - [Tenet](http://wiki.flightgear.org/Telnet_usage)  
 - [Python interface](https://sourceforge.net/p/flightgear/flightgear/ci/next/tree/scripts/python)  
 - To change values in property tree: `set /controls/flight/aileron -0.1`  
 - Executing NASAL code [http://wiki.flightgear.org/Telnet_usage#nasal]  


## Controls and properties
### AUDIO PILOT & COPILOT

Both audio are linked together

|Control | Property | Value | Indicator
| --- | --- | --- | --- |
|COM 1| /instrumentation/audio/com1-mike | toggled = (bool)true / false | Green led
|COM 2| /instrumentation/audio/com2-mike | toggled = (bool)true / false | Green led
|HF 1 | /instrumentation/audio/hf1-mike | toggled = (bool)true / false | Green led
|CABIN| /instrumentation/audio/cabin1 | toggled = (bool)true / false | Green led
|EMER| /instrumentation/audio/emerg1 | toggled = (bool)true / false | Amber led
|HDPH1| /instrumentation/audio/hdph1 | toggled = (bool)true / false | 
|HDPH1| /instrumentation/audio/hdph1-vol | 0,0.05,...,1 | 
|HDPH2| /instrumentation/audio/hdph2 | toggled = (bool)true / false | 
|HDPH2| /instrumentation/audio/hdph2-vol | 0,0.05,...,1 | 
|HF1| /instrumentation/audio/hf | toggled = (bool)true / false | 
|HF1| /instrumentation/audio/hf-vol | 0,0.05,...,1 | 
|NAV1| /instrumentation/audio/nav1 | toggled = (bool)true / false | 
|NAV1| ~~/instrumentation/audio/nav1-vol~~ | 0,0.05,...,1|
|NAV2| /instrumentation/audio/nav2 | toggled = (bool)true / false | 
|NAV2| ~~/instrumentation/audio/nav2-vol~~ | 0,0.05,...,1|
|INPH| /instrumentation/audio/inph | toggled = (bool)true / false | 
|INPH| /instrumentation/audio/inph-vol | 0,0.05,...,1 | 
|COM1| /instrumentation/audio/com1 | toggled = (bool)true / false | 
|COM1| /instrumentation/audio/com1-vol | 0,0.05,...,1 | 
|ADF1| /instrumentation/audio/adf1 | toggled = (bool)true / false | 
|ADF1| ~~/instrumentation/audio/adf1-vol~~ | 0,0.05,...,1|
|ADF2| /instrumentation/audio/adf2 | toggled = (bool)true / false | 
|ADF2| ~~/instrumentation/audio/adf2-vol~~ | 0,0.05,...,1|
|DME1| /instrumentation/audio/dme1 | toggled = (bool)true / false | 
|DME1| ~~/instrumentation/audio/dme1-vol~~ | 0,0.05,...,1|
|DME2| /instrumentation/audio/dme2 | toggled = (bool)true / false | 
|DME2| ~~/instrumentation/audio/dme2-vol~~ | 0,0.05,...,1|
|ID| /instrumentation/audio/id-voice | 0,0.05,...,1|
|ID| /instrumentation/audio/id | (bool)true auto if /instrumentation/audio/id-voice <= 0.6|
|SPKR| /instrumentation/audio/speaker | 0,0.05,...,1|
|MLS1| /instrumentation/audio/mls1 | toggled = (bool)true / false | 
|MLS1| /instrumentation/audio/mls1-vol | 0,0.05,...,1 | 
|MLS2| /instrumentation/audio/mls2 | toggled = (bool)true / false | 
|MLS2| /instrumentation/audio/mls2-vol | 0,0.05,...,1 | 
|MUTE| /instrumentation/audio/mute | pressed = (bool)true / false | 
|MKR| /instrumentation/audio/mkr | toggled = (bool)true / false | 
|MKR| /instrumentation/audio/mkr-vol | 0,0.05,...,1 | 
|HDPH| /instrumentation/audio/hdph-vol | 0,0.05,...,1 | 

### DC840 PILOT & COPILOT

Both DC840 are linked together

|Control | property| Value | Indicator
| --- | --- | --- | --- |
|PFD HSI| /instrumentation/primus2000/dc840/pfd-hsi | toggled = (bool)true / false |
|PFD WX| /instrumentation/primus2000/dc840/pfd-wx | toggled = (bool)true / false | 
|ET|  | pressed = | 
|TCAS|  | toggled = | 
|ACFT SYS| /instrumentation/primus2000/dc840/acft | toggled = (bool)true / false | 
|MFD MAP|  | toggled = | 
|MFD WX|  | toggled = | 
|NORM|  | toggled = | 
|ABN|  | pressed = | 
|LEFT|  | pressed = | 
|UP|  | pressed = | 
|DOWN|  | pressed = | 
|RIGHT|  | pressed = | 
|SKP| /instrumentation/primus2000/dc840/skp | NOT CONNECTED | 
|PAG| /instrumentation/primus2000/dc840/pag | NOT CONNECTED | 
|RCL| /instrumentation/primus2000/dc840/rcl | NOT CONNECTED | 
|ENT| /instrumentation/primus2000/dc840/ent | NOT CONNECTED | 

### PFD PILOT & COPILOT

Both PFD are linked together

|Control | Property | Value |
| --- | --- | --- |
|Minimums| /autopilot/settings/minimums | 0,50,...,1000|
|RA/BARO| /autopilot/settings/minimums-mode | toggle (string)'BA'/'RA' |
|STD| /instrumentation/altimeter/std | pressed = (bool)true / false |
|BARO| /instrumentation/altimeter/setting-ingh <BR> /instrumentation/altimeter/setting-kpa|(double)26,26.01,...,33 <BR> automatically updated|

### ABOVE PFD PILOT

|Control | Property | Value | Nasal | Indicator
| --- | --- | --- | --- | --- |
|CRS1 sel|instrumentation/nav/radials/selected-deg|turn: 0,1,...,360 <br>pressed: orientation/heading-magnetic-deg|
|HDG sel|autopilot/settings/heading-bug-deg|turn: 0,1,...,360 <br>pressed: orientation/heading-magnetic-deg|
|Nav1 select|instrumentation/primus2000/sc840/nav1ptr|OFF,VOR1,ADF1,FMS1 = 0,1,2,3|
|PREV|NOT CONNECTED||
|NAV|autopilot/settings/nav-btn|pressed = (bool)true / false|citation.nav_src_set("nav")|
|FMS|autopilot/settings/fms-btn|pressed = (bool)true / false|citation.nav_src_set("fms")|
|Nav2 select|instrumentation/primus2000/sc840/nav2ptr|OFF,VOR1,ADF1,FMS1 = 0,1,2,3|
|MWR|instrumentation/annunciators/ack-warning|Press set to 1||(double)instrumentation/annunciators/warning = 0/1|
|MCR|instrumentation/annunciators/master-caution|Press set to 1||(double)instrumentation/annunciators/caution = 0/1|

### MFD PILOT

|Control | Property | Value |
| --- | --- | --- |
|PB 1| /instrumentation/mfd/btn0 | pressed = (int)1 / 0 |
|PB 2| /instrumentation/mfd/btn1 | pressed = (int)1 / 0 |
|PB 3| /instrumentation/mfd/btn2 | pressed = (int)1 / 0 |
|PB 4| /instrumentation/mfd/btn3 | pressed = (int)1 / 0 |
|PB 5| /instrumentation/mfd/btn4 | pressed = (int)1 / 0 |
|PB 6| /instrumentation/mfd/btn5 | pressed = (int)1 / 0 |
|Knob| /instrumentation/mfd/range-nm | 10,20,40,80,160 |

### EICAS

|Control | Property | Value |
| --- | --- | --- |
|PB 1| /instrumentation/eicas/btn0 | pressed = (int)1 / 0 |
|PB 2| /instrumentation/eicas/btn1 | pressed = (int)1 / 0 |
|PB 3| /instrumentation/eicas/btn2 | pressed = (int)1 / 0 |
|PB 4| /instrumentation/eicas/btn3 | pressed = (int)1 / 0 |
|PB 5| /instrumentation/eicas/btn4 | pressed = (int)1 / 0 |
|PB 6| /instrumentation/eicas/btn5 | pressed = (int)1 / 0 |
|Knob| /instrumentation/eicas/knob | 1,2,...,10  |

### MFD COPILOT

|Control | Property | Value |
| --- | --- | --- |
|PB 1| /instrumentation/mfd[1]/btn0 | pressed = (int)1 / 0 |
|PB 2| /instrumentation/mfd[1]/btn1 | pressed = (int)1 / 0 |
|PB 3| /instrumentation/mfd[1]/btn2 | pressed = (int)1 / 0 |
|PB 4| /instrumentation/mfd[1]/btn3 | pressed = (int)1 / 0 |
|PB 5| /instrumentation/mfd[1]/btn4 | pressed = (int)1 / 0 |
|PB 6| /instrumentation/mfd[1]/btn5 | pressed = (int)1 / 0 |
|Knob| /instrumentation/mfd[1]/range-nm | 10,20,40,80,160 |

### LIGHTS (PILOT)

| Control | Property | Value
| --- | --- | --- |
| EMERG LT | controls/lighting/emer-light  | OFF/ON/NORM = 0,1,2 |
| DAY NIGHT | controls/lighting/day-night | OFF/DIM ON = (bool)false / true |
| FLOOD LTS | controls/lighting/flood | 0,0.05,...,1 |
| EL | controls/lighting/instruments-norm | 0,0.05,...,1 |
| LH | controls/lighting/lh-lights | 0,0.05,...,1 |
| CTR | controls/lighting/ctr-lights | 0,0.05,...,1 |

### FUEL

| Control | Property | Value | Nasal |
| --- | --- | --- | --- |
| CROSSFEED | controls/engines/xfeed  | LH TANK,OFF,RH TANK = -1,0,1| citation.crossfeed() [Fuel.nas] |
| GRVTY XFLOW | controls/fuel/gravity-xflow | OFF / LWING RWING = (bool)false / true | citation.gravity_xflow() [Fuel.nas] |
| CTR WING XFER O'RIDE L| controls/fuel/xfer-L | NORM,ON,LH = 0,1,2| |
| CTR WING XFER O'RIDE R| controls/fuel/xfer-R | NORM,ON,LH = 0,1,2| |


### DC POWER

### AVIONICS

| Control | Property | Value
| --- | --- | --- |
| AVN | controls/electric/avionics-switch | OFF/EICAS/AVN = 0,1,2 |

### ENGINE STARTER

### IGNITION

### FUEL BOOST

### FADEC

### STBY PWR

### ANTI-ICE

### HYDRAULICS

### LIGHTS (COPILOT)

### PRESSURISATION

### CDU
In the CitationX aircraft folder, the files `Models/Instruments/CDU.xml` and
`Models/Instruments/CDU1.xml` assign the Nasal code to be executed for each 
key pressed, for the pilot and the copilot CDU respectively.

Several functions of the class `cduMain`, defined in `Nasal/CDU.nas`, are called:

 - `cdu.cduMain.btn(v, x)` is called when the button `v` is pressed on the CDU `x`.
   A button is an alphanumeric push button ('A', 'B', '1', '.', ...).
 - `cdu.cduMain.key(v, x)` is called when the key `v` is pressed on the CDU `x`.
   A key is a function bush button.
 - `cdu.cduMain.delete(x)` is called when the button 'DEL' is pressed on the CDU `x`.
 - `cdu.cduMain.previous(x)`
 - `cdu.cduMain.next_key(x)`
 - `cdu.cduMain.delete(x)`

Few examples:

 - When the top right key (close to the screen) is pressed on the pilot CDU,
   the function `cdu.cduMain.key('B1R',0)` is called.
 - When the button 'Z' us pressed on the copilot CDU, the function 
   `cdu.cduMain.btn('Z',1)` is called.
 - When the button 'DEL' us pressed on the pilot CDU, the function 
   `cdu.cduMain.delete(0)` is called.

Instead of reprogramming the entire CDU into a microcontroler, it has been 
decided to call these function instead. It is possible to call a Nasal function
via the telnet interface by sending for example:

```
nasal
cdu.cduMain.btn('Z',1);
##EOF##
```

**Running nasal commands via telnet requires the `--allow-nasal-from-sockets` option.**

|Button | Code | v |
| --- | --- | --- |
|Left buttons| cdu.cduMain.key(v,x); | 'B1L' ... 'B4L' |
|Right buttons| cdu.cduMain.key(v,x); | 'B1R' ... 'B4R' |
|PERF| cdu.cduMain.key(v,x); | 'PERF' |
|NAV| cdu.cduMain.key(v,x); | 'NAV' |
|FPL| cdu.cduMain.key(v,x); | 'FPL' |
|PROG| cdu.cduMain.key(v,x); | 'PROG' |
|  |  |  |
|A-Z| cdu.cduMain.btn(v,x); | 'A' ... 'Z' |
|0-9| cdu.cduMain.btn(v,x); | '0' ... '9'  |
|.| cdu.cduMain.btn(v,x); | '.' |
|-| cdu.cduMain.btn(v,x); | '-' |
|/| cdu.cduMain.btn(v,x); | '/' |
|  |  |  |
|PREV| cdu.cduMain.previous(x); |  |
|NEXT| cdu.cduMain.next_key(x); |  |
|DEL| cdu.cduMain.delete(x); |  |
|  |  |  |
|CLR| setprop("/instrumentation/cdu[x]/input",""); |  |

**Button DIR** - If the property `autopilot/settings/nav-source` is equal to `FMS1` then
`instrumentation/cdu/direct` is set to True, otherwise to False.

### RMU
For the RMU the properties are changed according to complex rules coded in XML.
Therefore, one should refer to the file `Models/Instruments/RMU/RMU1.xml`.
No nasal code is called.

### PEDESTRAL

|Control | Property | Value | Indicator
| --- | --- | --- | --- |
|SEC TRIM | | | |
|SEC TRIM NOSE | | | |
|AUTOPILOT NOSE | | | |
|SPOILERS|
|THRUST LEFT|
|THRUST RIGHT|
|REVERSE LEFT|
|REVERSE RIGHT|
|FRICTION|