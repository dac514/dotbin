### Kill desktop

    Press Ctrl+Alt+F2 (or F3, F4, F5, F6 :: F7 is the Desktop)
	$ sudo stop lightdm
	$ sudo start lightdm	


### Reset displays in XFCE

	$ xrandr --auto	


### Icons for menus are located in:

    /usr/share/applications
	~/.local/share/applications


### Find duplicates
	
	$ fdupes


### Convert all files to lowercase letters

	$ find . -depth -exec rename 's/(.*)\/([^\/]*)/$1\/\L$2/' {} \;


### Force check disk on reboot:

	$ sudo touch /forcefsck


### Fix website permissions, brute force:

	$ sudo chmod -R 664 ~/path/
	$ sudo find ~/path/ -type d -exec chmod 775 {} \;
	


### Remove a PPA

	$ sudo apt-get install ppa-purge
	$ sudo ppa-purge ppa:otto-kesselgulasch/gimp



### Restart pulseaudio

	$ pulseaudio -k


### Update GeoIPCity database

	$ wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz
	$ gunzip GeoLiteCity.dat.gz
	$ sudo mv GeoLiteCity.dat /usr/share/GeoIP/GeoIPCity.dat
	$ sudo chown root:root /usr/share/GeoIP/GeoIPCity.dat
	$ sudo chmod 644 /usr/share/GeoIP/GeoIPCity.dat


### Apache+PHP tips

Enabling Apache’s PHP execution in User Directories:

	$ cd /etc/apache2/mods-enabled
	$ sudo ln -s ../mods-available/userdir.load
	$ sudo ln -s ../mods-available/userdir.conf
	// Comment out the bottom of this file:	
	$ sudo nano -w /etc/apache2/mods-available/php5.conf
	// Change to `AllowOverride All` and `Options Indexes MultiViews FollowSymLinks`
	$ sudo nano -w /etc/apache2/mods-available/userdir.conf
	$ sudo a2enmod rewrite

Securing localhost Apache:

	// Add `Listen 127.0.0.1:80` to:
	$ sudo nano -w /etc/apache2/ports.conf

Notes to self: 

 + Bad .htaccess rewrite rules break symlinks! Comment out stuff like `RewriteCond %{HTTP_HOST} !website.com`
 + PHP.ini template file exists at: /usr/share/php5/php.ini-development


### Install a .deb file

	$ sudo dpkg -i name_of_file.deb
	

### Backup and Restore MySQL Database Using mysqldump

	$ mysqldump -u root -p[root_password] [database_name] > dumpfilename.sql
	$ mysql -u root -p[root_password] [database_name] < dumpfilename.sql


### BUSIER backwards

If your computer locks up completely, you can REISUB it, which is a safer 
alternative to just cold rebooting the computer. While holding ALT and the 
SysReq(Print Screen) keys, type R E I S U B.

Let a few seconds pass in between each keypress so that the commands you're 
invoking have a chance to finish before you go to the next one.


### Git: Ignore mode changes 

Note: You can ignore any errors about "chmod: missing operand after `+x'")

	$ git diff --summary | grep --color 'mode change 100755 => 100644' | cut -d' ' -f7- | xargs -d'\n' chmod +x
	$ git diff --summary | grep --color 'mode change 100644 => 100755' | cut -d' ' -f7- | xargs -d'\n' chmod -x


### Scan network, get info on a result

	$ sudo nmap -sP 192.168.1.1-255
	$ sudo nmap -O 192.168.1.100


### Remove old kernels

	$ dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge


### CPU tips

	$ grep 'model name' /proc/cpuinfo | wc -l
	$ htop
	$ sensors
	$ cpufreq-info
	
	
### Hide (or Unhide) Grub

 1. Open the /etc/default/grub file using from terminal entering: gksu gedit /etc/default/grub
 2. Change GRUB_TIMEOUT=10 to GRUB_TIMEOUT=0
 3. Save the file and quit the text editor.
 4. Run: sudo update-grub
 5. Reboot.

IMPORTANT: If then you need to change to Recovery mode in some instance just press ESC when Linux starts. That is between when the BIOS finishes loading all necessary stuff and the Operating System starts. Then the GRUB menu will appear giving you the change to select the recovery mode.


### Switch from OpenJDK to SunJDK (and back)

	$ sudo update-alternatives --config java
	

### Virtualbox/Vagrant breaks after kernel update

"I ended up uninstalling and reinstalling virtualbox using apt-get. It saw that there were kernel parts missing and installed them."

	$ sudo apt-get remove virtualbox
	$ sudo apt-get install virtualbox


### Backups can be recovered at the command line using Deja-Dup

	$ cd /path/to/dir
	$ deja-dup --restore .


### Startup services

GUIs:

	$ sudo sysv-rc-conf
	$ sudo jobs-admin

Remove services:

	$ sudo update-rc.d -f memcached remove
