# How to
## Manage several digital inputs/outputs

## Manage several potentiometers
The solution is to use a 8-channel analog multiplexer 74HC4051. This component connects its Z terminal to one its Y0-Y7 terminals according to the 3-bits address read on its terminal S0-S3 (S3 is the MSB).

## Manage several 7-segments displays
I have used TM1637 modules with 4x 7-seg displays. The solution I have found is to multiplex the data line (DIO) and the clock (CLK). I have used two 74HC4051, but I could have used a double multiplexer.
For 4x TM1637 modules I need to multiplex DIO, CLK, and I need 3 address bits L0-L3. Meaning that I need at 5 IO.
I have decided to use a small Pro Micro to manage TM1637.  

The Pro Micro receives the values to display form the master ESP32 vie I2C.  

![Module TM1637](Documentation/Images/item_XL_25709278_43262978.jpg)

# Architecture
## The main board - [Overview on EasyEDA](https://easyeda.com/arnaud.dessein/CessnaCitationX_MainESP32)
![Main board](https://image.easyeda.com/histories/7628719679894128ae6eaa743a7f1e7e.png)
![Main PCB](https://image.easyeda.com/histories/d7d3c80a52c745958e94a10e93038830.png)

## The pilot board - [Overview on EasyEDA](https://easyeda.com/arnaud.dessein/cessnacitationx_pilotboard)
![Pilot board](https://image.easyeda.com/histories/1303b27b57a742ecba7c94e3f0c2dfaf.png)
![Pilot PCB](https://image.easyeda.com/histories/e094accda3f04a1eb617e81665ecf808.png)

## The copilot board - [Overview on EasyEDA](https://easyeda.com/arnaud.dessein/cessnacitationx_copilotboard)
![Copilot board](https://image.easyeda.com/histories/ffcce53339224ba8bd77f2dd7e9056c0.png)
![Copilot PCB](https://image.easyeda.com/histories/367ac23a22fe4a98aac45d19dad16633.png)

## The autopilot board - [Overview on EasyEDA](https://easyeda.com/arnaud.dessein/cessnacitationx_autopilot)
![AP diag](https://image.easyeda.com/histories/917b309d725c421fa47abd116abbc973.png)
![AP PCB](https://image.easyeda.com/histories/c5539fca08c144fc8097a1c4f096140a.png)

## The autopilot font-panel  - [Overview on EasyEDA](https://easyeda.com/arnaud.dessein/cessnacitationx_ap_front)
![AP front diag](https://image.easyeda.com/histories/e0df7eb012a64a4aa807cc20b3b47331.png)
![AP front PCB](https://image.easyeda.com/histories/807bc9d5edad43bba0ebf1163297100b.png)

## The APU - [Overview on EasyEDA](https://easyeda.com/arnaud.dessein/cessnacitationx_autopilot)
![APU diag](https://image.easyeda.com/histories/6c3e2af034e8406aac63f046f377030a.png)

## The centre - [Overview on EasyEDA](https://easyeda.com/arnaud.dessein/cessnacitationx_center)
![Center diag](https://image.easyeda.com/histories/06a904d6bcd64382bdad4a49099f61e0.png)
