# setupesc

**Setupesc** is a collection of tweaks and small programs to _enhance productivity and ease of use_ of a Windows 10 system.

This project was born out of frustration aimed at the default win10 experience, its clunky and awkward interface had always been a barrier between the user and his/her instructions. My goal is to make your computer work for you and not the other way around by replacing the interface for common tasks with a keyboard shortcut, all my common tasks have been completely replaced with shortcuts, so much so that I no longer need a desktop or windows home menu.

Made using autohotkey and licensed under the GPL.

---

# **UPDATE**

# A new direction

I will attempt to re-write this program, here are some things I need to keep in mind:

## To do list

* add updated software list
* test chocolately installed software
* add json settings file
* re-implement workspaces

---

## A desktop with no icons needed

Thanks to setupesc I achieved a desktop with zero icons and distractions, your computer is a tool not a toy, the less distractions and layers of menus: the better.

## Download

[click here to download](https://github.com/alex-esc/setupesc/archive/master.zip). To download the source code, just clone this repository or click download zip.

## How to launch common programs

Since most of your time on a computer is spent in front of a text editor, web browser or video streaming service I've turned these actions into shortcuts.

|  Key combination  |   Program   |
|:------------------|:-----------:|
| Win + b           | Firefox     |
| SHIFT + Win + b   | Waterfox    |
| CONTROL + Win + b | Brave       |
| Win + v           | FreeTube    |
| Win + n           | Notepad++   |
| Win + k           | KeePassXC   |
| Win + m           | Thunderbird |
| Win + p           | Gpodder     |
| Win + r           | RSS Reader  |
| CONTROL + ESCAPE  | Launchy     |

and much more!

Since I use multiple browsers I choose between them using SHIFT and CONTROL, you can modify these shortcuts and modify them with little effort, for example you could change FreeTube for YouTube or Netflix, I will go in more detail on a later section.

## How to launch any program

You may not recognize all programs on the list, but the last program 'Launchy' is a great tool for opening any program of file without looking inside folders. Launchy works very much like 'Spotlight' on a mac but it has more options and customizability.

**To launch any program or open any file**

1. Install launchy [here](http://www.launchy.net/download.php)
2. Run it and press Alt + Space
3. Search for any file or program on the pop-up

Later you can right lick on launchy to change the hotkey to call the search function, I personally use CONTROL + ESCAPE.

## Installing setupesc

Download setupesc and un-zip it then open the folder called setupesc and click on the file called 'installer.bat'

This will create a new folder on your documents folder, the new folder will be named 'setupesc' and it will make this program run on startup.

## Uninstalling setupesc

To uninstall Setupesc go to my documents and find the folder called setupesc, it will have a copy of the repository, on it you must click on 'un-installer.bat' to uninstall the program, this will delete all trace of the program on your computer.

When the unsinstalling process begins explorer.exe will restart.

## Copying setupesc on another computer

If you wish to copy the installer on a USB drive to install it on a different computer you need to copy the entire 'setupesc' folder instead of only copping the installer, this is because the installer needs the rest of the files on 'setupesc'.

Remember that the folder 'setupesc' is inside 'my documents'.

## How to make your own shortcuts

If you want to add a shortcut or edit an existing one you need to download the source code and compile your own version. To make / edit a shortcut you must understand the autohotkey scripting language, you can begin by:

1. Downloading & installing autohotkey from their [website](https://autohotkey.com/download/).
2. Download the setupesc source code or clone this repository.
3. Open setupesc.ahk and edit the desired shortcut or create your own (following autohotkey's rules and syntax, guide [here](https://autohotkey.com/docs/AutoHotkey.htm)).
4. Right click on your modified version of setupesc.ahk and click compile, and wait a second or two.
5. Run the new executable or add it to your startup program list.

Remember that this software is licensed under the GPl, meaning you may copy, distribute and modify the software as long as you track changes/dates in source files. Any modifications to or software including (via compiler) GPL-licensed code must also be made available under the GPL along with build & install instructions. Full license included and on <http://www.gnu.org/licenses/>.

> GPl summary by tldrlegal.com

### Simple explanation of an ahk shortcut:

**Example: shortcut for firefox**

	#b::
		Run, firefox.exe
		return

This means: run 'firefox.exe' when 'Windows + b' is pressed. \# means the windows key, whatever is next to it will be the next button to push to trigger the shortcut.

**What symbol means what?**



<!-- 
IMPORTANT NOTE, ALL SYMBOLS INSIDE THIS DOCUMENT START WITH '\' JUST IGNORE THAT SYMBOL, FOR EXAMPLE IF I SAY THAT '\#' MEANS WIN KEY, IT MEANS THAT ONLY '#' MEANS WIN KEY
 -->



|  symbol |          key           |
|:--------|:----------------------:|
| \#      | Win (Windows logo key) |
| \!      | Alt                    |
| \^      | Control                |
| \+      | Shift                  |

**What if I don't know the name.exe of the program I want?**

Use the path of the program:

	^#b::
		Run, C:\Users\alex-esc\AppData\Local\Brave\Brave.exe
		return

Remember that \^ means control and \# means win, therefore to run this shortcut you need to press 'CONTROL + Win + b'

**Infinite possibilities!**

Check out the Autohotkey documentation for more information, [link here](https://autohotkey.com/docs/AutoHotkey.htm) and ask any questions on the public [forum](https://autohotkey.com/boards/).

**But I don't want to program!**

On a later release I will implement a prompt for creating your own shortcuts, for now you need to dive in the source code.

## Credits & contributions:

Most of the small changes and shortcuts are made by me and the most complex functions were taken from the autohotkey publuc forums.

**Credits**

* Lexikos from the AutoHotkey Foundation for [mouse acceleration toggle script](https://autohotkey.com/board/topic/43700-mouse-acceleration-onoff/)
* MsgBox for [inserting Spanish accents script](https://autohotkey.com/board/topic/16920-how-to-enter-basic-spanish-accented-characters/)
* leekohlbradley for [hide taskbar script](https://autohotkey.com/board/topic/83594-how-to-hide-taskbar-with-hotkey/)
* LPChip from superuser.com for making possible the [power mode switch script](https://superuser.com/questions/957500/easy-way-to-switch-power-plan-in-windows-10#957520)

## Contact info

email <alexesc@disroot.org>

website <https://alex-esc.github.io>


## License

GNU GENERAL PUBLIC LICENSE: Version 3, 29 June 2007

Setupesc Copyright (C) 2018  by alex-esc (Alejandro Escalante)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or 
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Full license included and also on <http://www.gnu.org/licenses/>.