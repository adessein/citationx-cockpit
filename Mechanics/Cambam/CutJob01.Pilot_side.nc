( Made using CamBam - http://www.cambam.co.uk )
( CutJob01 7/8/2019 9:28:17 PM )
( T0 : 0.15 )
G21 G90 G64 G40
G0 Z0.1
( T0 : 0.15 )
T0 M6
( Inner )
G17
M3 S1000
G0 X179.5884 Y700.425
G1 F1000.0 Z-0.1
G1 F400.0 X305.425
G1 Y610.8294
G1 X179.5884
G1 Y700.425
G0 Z0.1
G0 X373.0277
G1 F1000.0 Z-0.1
G1 F400.0 Y700.544
G1 X526.6573
G1 Y611.4582
G1 X373.0277
G1 Y700.425
( Pilot_side outer )
S1000
G0 Z0.1
G0 X543.4165 Y596.6385
G1 F1000.0 Z-0.1
G1 F400.0 Y714.6159
G3 X543.3415 Y714.6909 I-0.075 J0.0
G1 X4.2519
G3 X4.1769 Y714.6159 I0.0 J-0.075
G1 Y596.6385
G3 X4.2519 Y596.5635 I0.075 J0.0
G1 X543.3415
G3 X543.4165 Y596.6385 I0.0 J0.075
G0 Z0.1
M5
M30
