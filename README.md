# Setup workstation 

Script to setup a workstation on Ubuntu 18.04


Clone this repository :  
`sudo apt install git`

`git clone https://github.com/sorasful/workstation-setup-ansible.git`

Change the permission of `install.sh`  
`chmod +x install.sh`  


Then  : 
`./install.sh`  


When all is installed (things to do manually) :  

- gnome-tweaks to change some display
- mouse settings change the scrolling direction (natural scrolling)
- dconf editor to alt tab only on current workspace  /org/gnome/shell/app-switcher/current-workspace-only
- add adblock to chromium
- Add keyboard shortcuts: 
    - Win + B : browner 
    - Win + R : redshift -O 2500

Then disconnect to apply changes.
