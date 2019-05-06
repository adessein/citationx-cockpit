"""
Script that reads canvas screenshots from Flightgear

Arnaud DESSEIN

"""

import pygame as pg
from urllib.request import urlopen
import io


pg.init()

url = "http://192.168.1.11:5701/screenshot?type=png&canvasindex="
s=300

dh = 2*s
dw = 5*s

screen = pg.display.set_mode((dw, dh))
clk = pg.time.Clock()

disps = {	'PFDp'  : (10, (0,0)),
			'NDpt'  : (6, (s,0)),
			'NDpb'  : (7, (2*s,0)),
			'EICAS' : (12, (3*s,0)),
			'NDct'  : (8, (4*s,0)),
			'NDcb'  : (9, (0,s)),
			'PFDc'  : (11, (s,s)),
			'CDUp'  : (3, (2*s,s)),
			'CDUc'  : (4, (3*s,s))}

def refresh():
	for name, disp in disps.items():
		print(disp[0], disp[1])
		imgurl = url + str(disp[0])
		print(imgurl)
		img = pg.image.load(io.BytesIO(urlopen(imgurl).read()))	
		img = pg.transform.scale(img, (s,s))
		screen.blit(img, disp[1])

while True:
	refresh()
	pg.display.update()

pygame.quit()
quit()
