OUTDATED
=======

scripts/static/ppp
==================

Bunch of scripts for setting up a VPN (PPTP) connection. I use these scripts for 
connecting to my work computer (it is under OS Windows control).

Before starting using these scripts it is necessary to install pppd and pptp packages. 
I'm using Gentoo now, all steps are described in this manual 
http://pptpclient.sourceforge.net/howto-gentoo.phtml.

After that you should create "vpnparams" file, that should contains following params:
 - $SERVER: VPN server name to connect
 - $USERNAME: VPN user name
 - $WORKSTATION_IP: work computer IP

Finally, run "install" script as root. It will copy files to /usr/sbin directory.


scripts/static/rdp
==================

Bunch of scripts for work through RDP protocol (freerdp client).

Before starting using these scripts it is necessary to install freerdp package (with 
"X" USE flag).

After that you should create "rdpparams" file, that should contains following params:
 - $SERVER: workstation ip to connect to
 - $USERNAME: workstation user name
 - $WIDTH: freerdp window width
 - $HEIGHT: freerdp window heigth

Finally, run "install" script as root. It will copy files to /usr/bin directory.


vim-plux
========

LINUX:
	1)	Copy vimrc_template to $HOME directory as .vimrc file
	2)	Set path to repository with vim files to g:VimFilesDir variable

WINDOWS:
	1)	Copy vimrc_template to $HOME directory as _vimrc file
	2)	Set path to repository with vim files to g:VimFilesDir variable


emacs-plux
==========

LINUX:

WINDOWS:
	1) Add shortcut to runemacs.exe file with options: -q -l "<path_to_your_config_folder>\emacsconfig.el"
