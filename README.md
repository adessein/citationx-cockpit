![In progress](https://img.shields.io/badge/status-in%20progress-orange.svg)

# Presentation

The purpose of this project is to build a 1:1 home cockpit for flying the Cessna Citation X aircraft in Flightgear.  
Flightgear is an open-source software that you can download on http://home.flightgear.org.  

The Citation X that I use is the outstanding version developped by the PAF team (Patrouille de France).  
 - forum (in french) : http://equipe-flightgear.forumactif.com/  
 - repository : https://sourceforge.net/projects/pafteam/  

Below are screenshots from flightgear and from a [Youtube video](https://youtu.be/rzMN0wDuVSo?t=93) showing the cockpit.  
![Screenshot from flightgear](https://github.com/adessein/citationx-cockpit/blob/master/Mechanics/Screenshots/overview800.jpg)  
![Screenshot from youtube video](https://github.com/adessein/citationx-cockpit/blob/master/Mechanics/Screenshots/cockpitYoutube.jpg)  

My project covers :  
 - the drawings used for cutting the MDF sheets and build the cockpit,  
 - the circuit diagrams and PCBs,  
 - the code used in the microcontrollers (ESP-32 and Arduino Leonardo/Pro Micro) for the inputs and outputs,  
 - the code used in the Raspberry Pi Zero W for displaying the canvas on the screen.  
 
 In the folder Electronics, you can find the backup files from EasyEDA.com. The project is available on https://easyeda.com/arnaud.dessein

# How to clone the repository

This repository includes Kicad libraries as git sub-modules.
Therefore, you should get the modules after cloning the repo.

```
git clone git@github.com:adessein/citationx-cockpit.git
cd citationx-cockpit
git submodule update --init --recursive
```

# Documentation

I have documented this project so you can find details about how I designed my home cockpit.
My intention is to share my experience, explain my choices and show where I failed.  

I hope that it will help you understanding the content of this repository, help you in your projects (home cockpit or others).

[Mechanical design](Documentation/Mechanical-design.md) - How I build the cockpit from the 3D model  
[Electric design](Documentation/Electric-design.md) - How I designed the electronics  
[EFIS](Documentation/EFIS.md) - How I rendered the different screens of the EFIS (PFD, ND, EICAS)  

