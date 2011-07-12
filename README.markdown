Nyager
======

Nyager brings the best of *Nyan Cat* and *Jasager*.

[*Jasager*](http://www.digininja.org/jasager/) fools wifi cards making them think that the router is an already known one (for example the one at your home), so they connect automatically without asking permission to.

Once connected, all DNS querys are redirected to the *Nyan Cat* page inside the router, so it is fully auto-contained as no internet connection is required.

<img style="float:center" src="https://github.com/chiva/Nyager/raw/master/images/nyan.png" />

Installation
------------

Jasager is based on OpenWRT but madwifi drivers are only compatible with Atheros based routers.
Compatible routers are the discontinued Fonera models and [Open Mesh](http://www.open-mesh.com).

**NOTE:** This has only been tested with a *Fonera 2201* router.

Installation steps:

1. [Unlock](http://www.fonboard.nl/w/index.php/HowTo_Foneraplus_unlocking2) *La Fonera*. If it's already unlocked skip this step
2. Flash Jasager [firmware](http://www.digininja.org/files/jasager_firmware_1.0.tar.bz2)
3. Telnet to the router (192.168.1.1) and execute *passwd* to add a password to the *root* user. Now you have SSH access
4. SCP the contents of *files* folder to the router
5. Run install script. Try *chmod +x install.sh* if you are unable to launch the script
6. Have fun!

Now what?
---------

Everything autostarts during boot, so just power it up and wait. It can work fully unattended.

If you want to see how things are going:

- Web interface: located on port 1471, login with your root username and password.
- SSH: run *tail -f /tmp/status.log* It will show the same log as in the web interface, it also autoupdates.

Thanks to
---------

Idea and  HowTo: [Hak5 Ep. 910](http://www.hak5.org/episodes/episode-910) and [Hak5 Forums](http://www.hak5.org/forums/index.php?showtopic=17379) as done by [John Bebo](http://beboblog.johnbebo.com/2010/03/13/fon2100-and-jasager.aspx)

Nyan Cat page: http://www.slowbro.org

Music loop: http://www.nyan.cat

Do you know how to improve my work? Edit the file and send me a pull request
It would be nice to remove current flash dependencies