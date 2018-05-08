`[parm]:title =   'Launchy Manual'

# Launchy User Manual

## Overview

![Launchy's icon](http://misc.aplteam.com/launchy.ico){width="32" height="32"} Launchy is designed to address the needs of developers who have more than just one version of Dyalog APL installed on their machine. It investigates the Windows Registry in order to work out which versions of Dyalog APL are installed and offers them in a drop-down control for selection.

In a general INI file called Launchy.ini one can specify a couple of things. For a programmer it should be self explanatory what the INI file entries are all about, with the noticeable exception of the [WS_CHECK] section. It is not recommended to delete or change that one.

In addition to the general INI file one can also specify an INI file named "Launchy\_{machineName}.ini" which will only be instantiated on machines with matching names. This allows one to specify machine dependent INI entries, "workdir" and "wssize" being the most obvious candidates.
          

## Notes
        
* "workdir" is the directory which will become the current dir for any instance of Dyalog APL launched by Launchy.

  If the INI entry does not exist or is empty or the specified directory then there will be no menu entry "Explore > WorkDir

  
* In case Launchy itself was launched with admin rights (by selecting "Run as administrator" from the context menu associated with Launchy exe for example) the string "Rights: extended" will be shown in the caption of the GUI. 

## Installation
    
Move the contents of the ZIP file you've downloaded into the appropriate folder.<<br>>A good place might be:

`C:\Users\{YourUserName}\AppData\Local\Programs\Launchy\`

or

`C:\Users\All Users\AppData\Local\Programs\Dyalog\Launchy`

Notes:

* `AppData` is by default invisible to ordinary users.

* `Program Files` or `Program Files (x86)` are not exactly ideal because Microsoft keeps making it harder to write to those folders. As a result Launchy would not be able to save any error information to the disk in case of a crash.)

Now remove ".RemoveMe" from the name of the INI file which is by then "Launchy.ini.RemoveMe"; this is a measure against overwriting you own INI file accidentally when you update Launchy one day.

With a default RIDE installation it should work out of the box. With a non-standard installation of RIDE you need to make adjustments to the INI file.

    
## How to update

* Download Launchy
* Replace all files in your current installation with the newly downloaded files. 
* Compare "Launchy.ini" (your own INI file) with "Launchy.ini.RemoveMe" (the file you've just
  downloaded) in order to identify changes you have to adapt. 
  
  Using a tool like [CompareIt!](http://www.grigsoft.com/wincmp3.htm) or [Beyond Compare](https://www.scootersoftware.com/) is recommended for doing this.

  Then act sensibly and you will be fine.
  
* When everything works fine delete "Launchy.ini.RemoveMe"    

## Errors

In case Launchy crashes, for example because of an invalid or missing INI file entry, then some files are written into a folder `Errors\` within the folder that hosts Launchy's EXE file. These files, in particular the HTML file but also the workspace, should allow you to identify and fix the problem.

However, if that does not work for you then please zip those files and send them to kai@aplteam.com. 

## RIDE

Watch out: between version 2.5 and 2.6 and again between 2.8.2 and 2.9.0 the INI file entries for RIDE have changed. 

Due to a change of protocol from version 15.0 the Dyalog interpreter needs RIDE 3.0. This version of RIDE needs (again) slightly different parameters compared with previous versions. Version 14.0 and 14.1 still need Ride 2.0. Therefore starting with version 2.4 Launchy supports both versions of Ride. This requires a change in the 2.3-INI file of Launchy.

With version 2.9 Launchy requires all versions of Ride to be installed into the same directory. The INI entries `path2ride2` and `path2ride3` are no longer supported and **must not** be present in the INI file. Instead you may specify `[Ride]path2ride`. If this is not present then no Ride command is shown at all in the "File" menu.
 
Note that you do not have the choice to select "server", "connect" or "poll": Launchy will always go for "poll".

With version 2.6 Launchy will work (again) out of the box as long as you have a default RIDE installation, or no RIDE at all. Only if you have installed RIDE into a non-standard location needs the INI file attention in this respect.


## Admin rights

I keep getting bug reports because drag-and-drop sometimes does not work on the status bar of the session or any GUIs created with `⎕WC`. This is because you have started Dyalog with the check box "Run as admin once" ticked. Microsoft considers drag-and-drop to be too dangerous in such cases, and there is nothing that can be done about this.

However, with version 3.0 the check box "Run admin once" unticks itself, so you cannot forget any more that you've ticked it. 

    
## Default version
    
Until version 1.7.1 the default version was defined by an INI entry. With version 1.8.0 this was changed. Now the default version is saved on a per-user basis in the Windows Registry.

If there is no such RegKey yet, the first of the list of all installed APLs is defined as default. The user might change this at any time by selecting the appropriate version and then selecting "Make currently selected APL the defaults". 

The default is used in two scenarios:

* When Launchy is fired up the default version is pre-selected.
* By selecting "Select the default version" from the "Options" menu (F5) you can easily jump to the default version.

## License, copyright, creator

Launchy was created by Kai Jaeger. It is sponsored by APL Team Ltd. Launchy comes with an MIT license.
    
For details go to <https://github.com/aplteam/launchy>