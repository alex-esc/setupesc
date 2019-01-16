# Changelog

<!--
TODO
[] Replace date & release version on setupesc.ahk
[] Update (and check) documentation
[] changelog -->   pandoc .\binds.md -o binds.pdf
[] Push to main repo
[] Make release on github
[] Push to rss


# Update title

> Setupesc v0.1 pre-release, Version released on MONTH DAY YEAR


-->

[**Download the newest version here**](https://github.com/alex-esc/setupesc/archive/master.zip)

## Current version

# Introducing workspaces

> Setupesc v0.2 pre-release, Version released on January 16 2019


## New Features

* Added folder shortcuts:
	* Now you can bind your most commonly used folder to custom key binds.
	* All folder shortcuts follow this structure: 'Left Control + Left Shift +  X', where 'X' symbolizes any key assigned to a specific folder, for example in my setup I use 'Left Control + Left Shift +  d' to open the desktop.
	* Added folder shortcuts for:
		- Desktop folder
		- Videos folder
		- Images folder
		- Downloads folder
		- GitHub folder
		- Notebooks folder
		- LaTeX Files folder
		- Markdown folder
		- Sync folder
		- Documents folder
		- Audiobooks folder
		- eBooks folder
		- Projects folder
* Added workspaces:
	* You can now predefine a set of programs, files and folders to open at the same time, for example in my setup I can open my blog folder and my text editor with one key bind.
	* All workspaces follow this structure: 'Left Control + Left Alt +  X', where 'X' symbolizes any key assigned to a specific workspace, for example in my setup I use 'Left Control + Left Alt +  b' to open the blog workspace.
	* Added workspaces for:
		- Setupesc development
		- Bloging setup
		- More to come!
* Added help menu: Feeling lost? Just press 'WIN + F1' to open a list of all keyboard shortcuts.
	
## Updates:

New shortcuts will be added on each new release, some will be brand new, others might be re-purposed old ones, for more information please refer to the new help menu.

* changed Daw shortcuts from 'win + d' to 'win + s', you can now think about it as 's' for sound.
* Changed LaTeX shortcuts from 'win + l' to 'Win + t', 'T' stands for typesetting
* Changed hide taskbar script to 'win + f11' to better resemble a fullscreen shortcut
* Added shortcuts for:
	- vlc
	- mpv
	- popcorn time
	- RSSowl
	- Handbreak
	- Powershell

## Minor changes:

* Removed feed.rss from changelog folder since the new rss feed is available [here]( https://github.com/alex-esc/setupesc/releases.atom).
* Moved 'build', 'gui', 'silent install', 'README - how to compile.md' and 'cfg.cmd' to 'experimental-features&tests'.
* Changed update RSS feed to github release atom feed

## Experimental features:

Our vision for setupesc is constantly changing, here are some features not added in the main program, at some point they may be included or not, for now you can test them out for yourself, to use them you need to compile them, see: 'README - how to compile.md'.

* Added bug.n tile window manager.
* Added keyboard control over mouse movement.
* Added unfinished auto installer.
* Added peer to peer file syncing software SyncThing using SyncTrayzor as a GUI.

-----------------------------------------------------------------------

## Old versions

# A great productivity boost + opening up to the internet

> Setupesc v0.1 pre-release, Version released on October 22nd 2018

We are very exited about this project and want to share it with the world so we created a website!

+ new website https://alex-esc.github.io/getsetupesc/
+ new rss feed for updates on the website

## Opening up to the internet

Previous versions were focused on improving your productivity and yours alone, stay connected with your team and the internet with this new shortcuts: 

+ added website shortcuts for:
	- Github
	- Blackboard
	- Reddit
	- Netflix
	- YouTube
+ added instant messenger shortcuts for:
	- whatsapp
	- Telegram
	- Signal

## File manipulation changes	

Most of the time spent in front of a computer will be spent manipulating files, you need to create your file, the name it, then open it, you might want to import or copy paste some data from another place so that means extra time lost in the directory weds. We identified this problem and say no more!


Normally to create a new file you open the desired folder, then right click, name it, if you use any special file format you need to modify the filename to add the file extension then hit enter and then you can begin working with your file. This changes today, now as soon as you open the folder you can press 'ALT + n' and it will prompt you to write the name of a new file, you are free to write the name of the file with the extension (for example 'doctoral-thesis.docx') and as soon as you press enter the file will be created in the current location and the newly created file will be opened right away with the default editor.

+ added shortcut for instantly creating and opening a new file.

## New program shortcuts

Now that you know how to manipulate and create files more efficiently you might want to put it to the test with some newly supported programs:

+ added Adobe shortcuts for:	
	- Premiere Pro
	- Audition
	- AfterFX
+ added daw shortcuts for:	
	- Ableton Live
	- audacity
+ added Latex editor shortcuts for:	
	- TeXworks
	- texmaker
+ added program shortcuts for:
	- Github desktop
	- itunes
	- Tor browser

## Coming soon to setupesc

We are getting ready to officially release, so far this script requires some tinkering with, you need to install all the supported programs and correct the paths and slowly put surely we are working on making setupesc as user friendly as possible.

Setupesc will be getting version numbers from now on. You can now look at the changelog, find the newest version on the website and the rss feed.

A small tutorial and explanation of the keyboard shortcuts is now on the website.

## Miscellaneous changes

And finally some miscellaneous changes

+ added shortcut to bring up startup folder.
+ added shortcut to exit setupesc.
+ added installers for all needed programs under the folder 'programs-list'.
+ removed 'HOW-TO-INSTALL.txt' and moved installation instructions to the readme file.
+ updated documentation.
+ fixed zip file containing old version

-------------------------------------

- Setupesc :: Version released on September 30th 2018
	* This is the first mayor addition to setupesc, it adds a simple installer and uninstaller for ease of use
		+ added installer batch file, it will create a new folder on my documents with a clone of his repository and add the executable to the startup program folder.
		+ added uninstaller batch file, it simply deletes the folder created by the installer and removes the program from the startup program list.
		+ added chnangelog with a section for contributors who will receive as special mention and thank you :)
		+ added a file called 'HOW-TO-INSTALL.txt' to clarify the installation process.
		+ created batch-test folder for experimental features using batch files.
		+ fixed windows key not properly disabled.
		+ added changelog (hello!)

- Setupesc :: Version released on September 25th 2018
	* A new beginning and going forward
		- Technical changes
			+ Keybinds v5 and the experimental features are combined into a new project called 'Setupesc'.
			+ Source code and executable made publicly available on github.
			+ Gnu general public license version 3 chosen as the license.
			+ Some (but not all) previous versions will be archived on the github repo.
		- Going forward & what to expect.
			+ New releases: from now on this project will receive regular updates and new versions to come will all be called setupesc, there will not be a version number, rather than referring to each version under a number the new versions will be refereed to by date of release.
			+ Philosophy of this project: The way we interface with computers has changed from pressing to swiping, from local to online & from unrestricted to centralized and this change is making an impact on productivity. These changes have been mostly for the better but there are a few exceptions, mainly the interface itself and therefore I try to maximize productivity by minimizing the graphical interface.
			+ Accessibility & ease of use: As this project evolves I will be also focusing on making this set of scripts a 'set it and forget it' type of program, as the name implies this is a setup program aimed to be used on a fresh windows install. In the future this program will allow you to batch install all the programs you need to get your windows up and running quickly and to mirror my personal computer setup aimed to increase productivity, later versions will have a GUI for configuring and changing all the settings of this script, to modify settings for now you have to dive in the source code.
			+ The best way to enjoy this project: Because this program is meant to imitate my computer setup I invite you to use it as it is, then if you run into any issues or want to add a feature/shortcut, make the changes necessary until you find a comfortable setup, then save your new version on a USB drive if you ever need to install it on a new computer and consider publishing the code online. The point is that just because it doesn't work out of the box exactly like you like it don't just give it up, give it a couple weeks and modify it until it fits you just right.

- Keybinds v5 + Experimental common binds :: Alternative version released on August 16th 2018
	* Experimental features: launch common programs + launch any program or file.
		+ added laucnhy shortcuts to open any arbitrary file/program.
		+ added shortcuts for:
			- Firefox
			- Waterfox
			- Brave browser
			- Notepad++
			- Gpodder
			- FreeTube
		+ Remove Windows key functionality to avoid pressing it on accident.
		+ binded 'ctrl + esc' to the windows key.
		
- Keybinds v5 :: Version released on July 20th 2018
	* Home keeper update, more automation!
		+ added shortcut for sound output settings.
		+ added shortcut for showoff.
		+ changed 'alt + f4' to 'win + c'.
		+ added script to hide the taskbar.
		+ added script for inserting accents on a us keyboard.

- Keybinds v4 :: Version released on February 5th 2018
	* Re-mapped all binds.
		+ changed binds to use more intuitive keys.
		+ fixed binds that interfere with zoom in / out on chrome.

- Keybinds v3 :: Version released on October 30th 2017
	* New features to automate normal laptop use.
		+ added power plan control.
		+ added mouse acceleration control.
		+ removed volume control shortcut.

- Keybinds v2 + vol FAIL :: Alternative version released on October 28th 2016
	* Added a never to return feature: volume control.
		+ added volume control shortcut.

- Keybinds v1 :: Version released on October 27th 2016
	* This is the first version of setupesc, formally known as keybinds.
		+ added shortcut to type 'ñ' on US keyboards.