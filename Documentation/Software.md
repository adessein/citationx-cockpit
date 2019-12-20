# Interaction with the game

 - [Tenet](http://wiki.flightgear.org/Telnet_usage) 
 - [Python interface](https://sourceforge.net/p/flightgear/flightgear/ci/next/tree/scripts/python)

 - To change values in property tree: `set /controls/flight/aileron -0.1`
 - NASAL code (usefull for CDU keypad): 


## Controls and properties
### AUDIO PILOT & COPILOT

Both audio are linked together

|Control | property| Value | Indicator
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

|Control | property| Value |
| --- | --- | --- |
|Minimums| /instrumentation/pfd/minimums-radio | 0,50,...,1000 |
|RA/BARO| /instrumentation/pfd/minimum-diff | pressed changed value -610,610 |
|STD| /instrumentation/altimeter/std | pressed = (bool)true / false |
|BARO| /instrumentation/altimeter/setting-ingh |(double)26,26.01,...,33|
|BARO| /instrumentation/altimeter/setting-kpa |automatically updated|

### ABOVE PFD PILOT

|Control | property| Value | Indicator
| --- | --- | --- | --- |
|CRS1 sel|||
|HDG sel|||
|Nav1 select|||
|PREV|||
|NAV|||
|FMS|||
|Nav2 select|||
|MWR|||
|MCR|||

### MFD PILOT

|Control | property| Value |
| --- | --- | --- |
|PB 1| /instrumentation/mfd/btn0 | pressed = (int)1 / 0 |
|PB 2| /instrumentation/mfd/btn1 | pressed = (int)1 / 0 |
|PB 3| /instrumentation/mfd/btn2 | pressed = (int)1 / 0 |
|PB 4| /instrumentation/mfd/btn3 | pressed = (int)1 / 0 |
|PB 5| /instrumentation/mfd/btn4 | pressed = (int)1 / 0 |
|PB 6| /instrumentation/mfd/btn5 | pressed = (int)1 / 0 |
|Knob| /instrumentation/mfd/range-nm | 10,20,40,80,160 |

### EICAS

|Control | property| Value |
| --- | --- | --- |
|PB 1| /instrumentation/eicas/btn0 | pressed = (int)1 / 0 |
|PB 2| /instrumentation/eicas/btn1 | pressed = (int)1 / 0 |
|PB 3| /instrumentation/eicas/btn2 | pressed = (int)1 / 0 |
|PB 4| /instrumentation/eicas/btn3 | pressed = (int)1 / 0 |
|PB 5| /instrumentation/eicas/btn4 | pressed = (int)1 / 0 |
|PB 6| /instrumentation/eicas/btn5 | pressed = (int)1 / 0 |
|Knob| /instrumentation/eicas/knob | 1,2,...,10  |

### MFD COPILOT

|Control | property| Value |
| --- | --- | --- |
|PB 1| /instrumentation/mfd[1]/btn0 | pressed = (int)1 / 0 |
|PB 2| /instrumentation/mfd[1]/btn1 | pressed = (int)1 / 0 |
|PB 3| /instrumentation/mfd[1]/btn2 | pressed = (int)1 / 0 |
|PB 4| /instrumentation/mfd[1]/btn3 | pressed = (int)1 / 0 |
|PB 5| /instrumentation/mfd[1]/btn4 | pressed = (int)1 / 0 |
|PB 6| /instrumentation/mfd[1]/btn5 | pressed = (int)1 / 0 |
|Knob| /instrumentation/mfd[1]/range-nm | 10,20,40,80,160 |

### CDU
 - The keyboard writes in the scratchpad. The content of the scratchpad is in
`/instrumentation/cdu/input`.  
 - The page is selected by `/instrumentation/cdu/display` and `/instrumentation/cdu/nbpage`
I will have to reprogram the logic in Nasa/CDU.nas:key()
