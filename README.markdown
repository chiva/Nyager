Nyager
======

Nyager brings the best of *Nyan Cat* and *Jasager*.

[*Jasager*](http://www.digininja.org/jasager/) fools wifi cards making them think that the router is an already known one (for example the one at home), so they connect automatically without asking permission to.

Once connected, all DNS querys are redirected to the *Nyan Cat* page inside the router, so it is fully auto-contained and no internet connection is required.

<img style="float:center" src="https://github.com/chiva/Nyager/raw/master/images/nyan.png" />

Installation
------------

*Jasager* is based on OpenWRT but madwifi drivers are only compatible with Atheros based routers like the pre-2.0g Fonera models, [Open Mesh](http://www.open-mesh.com), [Gargoyle](http://www.gargoyle-router.com) and of course Hak5's [Pineapple](http://hakshop.com/collections/frontpage/products/wifi-pineapple).

**NOTE:** This has only been tested with a *Fonera 2201* router.

There are two ways to install Nyager, you can flash the Jasager firmware and then use the install script to modify it to what it should be or directly flash the Nyager firmware wich is already customized.

**FIRMWARE** (easy way)

1. [Unlock](http://www.fonboard.nl/w/index.php/HowTo_Foneraplus_unlocking2) *La Fonera*. If it's already unlocked skip this step
2. Download Nyager [firmware](https://github.com/downloads/chiva/Nyager/nyager_firmware_1.0.tar.gz)
3. Flash firmware with [FonFlash](http://www.gargoyle-router.com/download.php). Select *FonFlash* in the *Download* dropdown list 
4. Have fun!

**MANUAL** (hard way)

1. [Unlock](http://www.fonboard.nl/w/index.php/HowTo_Foneraplus_unlocking2) *La Fonera*. If it's already unlocked skip this step
2. Download Jasager [firmware](http://www.digininja.org/files/jasager_firmware_1.0.tar.bz2)
3. Flash firmware with [FonFlash](http://www.gargoyle-router.com/download.php). Select *FonFlash* in the *Download* dropdown list
4. Telnet to the router (`192.168.1.1`) and execute `passwd` to add a password to the `root` user. Now you have SSH access
5. SCP the contents of `files` folder to the router
6. Run install script. Try `chmod +x install.sh` if you are unable to launch the script
7. Have fun!

Now what?
---------

Everything autostarts during boot, so just power it up and wait. It can work fully unattended.

Remember that router's IP address is `192.168.1.1` and if you installed from the full firmware, the password for the `root` user will be `nyancatrocks!`.

If you want to see how things are going:

- Web interface: located on port `1471`, login with your root username and password.
- SSH: run `tail -f /tmp/status.log` It will show the same log as in the web interface, it also autoupdates.

Thanks to
---------

Idea and  HowTo: [Hak5 Ep. 910](http://www.hak5.org/episodes/episode-910) and [Hak5 Forums](http://www.hak5.org/forums/index.php?showtopic=17379) as done by [John Bebo](http://beboblog.johnbebo.com/2010/03/13/fon2100-and-jasager.aspx)

Nyan Cat page: http://www.slowbro.org

Music loop and favicon: http://www.nyan.cat

Do you know how to improve my work? Edit the file and send me a pull request
It would be nice to remove current flash dependencies

Demo
----

This is what you should get: http://chiva.github.com/Nyager