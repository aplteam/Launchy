[parm]:title             = 'Launchy Manual'
[parm]:collapsibleTOC    = 1

# Launchy User Manual

## Overview

![Launchy's icon](http://misc.aplteam.com/launchy.ico{width="32" height="32"}) Launchy is designed to address the needs of developers who have more than just one version of Dyalog APL installed on their Windows machine. It investigates the Windows Registry in order to work out which versions of Dyalog APL are installed and offers them in a drop-down control for selection.

This makes it easy to run any version of Dyalog APL. It also allows...

* setting certain flags like PropertyExposeRoot
* specifying the workspace size
* setting debug flags
* specifying additional command line parameters
* running (or ignoring) a user defined setup.dyalog script
* starting the APL interpreter in elevated mode (admin rights required)
* giving the interpreter a Ride.

Note that Launchy is a Windows-only application.

## Installation
    
Download the installer EXE: since version 6.0.0 Launchy has its own installer.

With a default RIDE installation it should work out of the box. With a non-standard installation of RIDE you need to make adjustments to the INI file; see next topic.

## Amendments (INI file)

Launchy comes with reasonable defaults specified in the INI file. Normally their will be no need to make amendments to this INI file.

The INI file is installed in `%localappdata%'),'\Launchy`, meaning that it can be changed even without admin rights. On a standard Windows installation this would be `%USERPROFILE%\AppData\Local\Launchy`

For a programmer it will be self explanatory what the INI file entries are all about, with the noticeable exception of the [WS_CHECK] section. It is not recommended to delete or change that section.

In addition to the general INI file one can also specify an INI file named `Launchy_{machineName}.ini` which will only be instantiated on machines with matching names. This allows one to specify machine dependent INI entries, "CONFIG:wssize", "CONFIG:workdir" and "FONT:Size" being the most obvious candidates.
          

## Notes
        
* "workdir" is the directory which will become the current (or working) directory for any instance of Dyalog APL launched by Launchy.

  If the INI entry does not exist or is empty or the specified directory does not exists then there will be no menu entry "Explore > WorkDir"

  
* In case Launchy itself was launched with admin rights (by selecting "Run as administrator" from the context menu associated with Launchy exe for example) "(elevated)" will be shown in the caption of Launchy's GUI. 


## How to update

You can use the menu command "Check for updates..." from the Help menu to find out whether there is a better version of Launchy available.

* Download Launchy
* Double-click the installer EXE
* Check whether "Launchy_Manual.html" contains any warnings regarding stuff like added INI entries etc. These will be shown prominently at the top of the document.
  
## Errors

In case Launchy crashes, for example because of an invalid or missing INI file entry, then some files are written into this folder:

```
%localappdata%'),'\Launchy\Errors\
```

These files, in particular the HTML file but also the workspace, should allow you to identify and fix the problem.

However, if that does not work for you then please zip those files and send them to info@aplteam.com. 

## Setup.dyalog

If Dyalog finds a file `Setup.dyalog` in any of the User Command folders then a function `Setup` within that file is executed. This is perfect for making amendments to your session etc.

### The check box "Execute setup.dyalog"

There might be situations when you do **_not_** want `setup.dyalog` to be executed. For that you can un-tick the box "Execute setup.dyalog". Launchy then passes `exec_setup=0` as a command line parameter.

Note that it is up to the script itself to honour this setting.


### The check box "Stop in setup.dyalog"

By default this check box is not ticked. If you tick it then `stop_in_setup=1` is passed as command line parameter.

Note that it is up to the script itself to honour this settings.


## RIDE

Notes:

1. With version 5.0.0 Launchy only supports Ride 4.0 and higher.

2. Since version 2.9 Launchy requires all versions of Ride to be installed into the same directory. The INI entries `path2ride2` and `path2ride3` are no longer supported and **must not** be present in the INI file. Instead you may specify `[Ride]path2ride`. If this is not present then no Ride command is shown at all in the "File" menu.

3. By default Ride is installed into `%LocalAppData%\Dyalog\Ride` until and including version 4.0 and `%LocalAppData%\Dyalog\Ride-4.1` since version 4.1.
 
4. With version 2.6 Launchy will work (again) out of the box as long as you have a default RIDE installation, or no RIDE at all. Only if you have installed RIDE into a non-standard location needs the INI file attention in this respect.

5. Ride version 4.1 supports the environment variable `RIDE_PREFS` which if present must specify a fully qualified filename pointing to a Ride preference file. By default the preference file lives in `%AppData%\Ride`.

   By setting `RIDE_PREFS` you can make Ride use a preference file that lives somewhere else like a DropBox-managed folder etc.

   You can tell Launchy to start Ride with `RIDE_PREFS` set by specifying an entry in Launchy's INI file:

   ~~~
   [Ride]
   profile     =   'C:\some\folder\prefs.json'
   ~~~


## Admin rights

I keep getting bug reports because drag-and-drop sometimes does not work on the status bar of the session or any GUIs created with `⎕WC`. This is because you have started Dyalog with the check box "Run as admin once" ticked. Microsoft considers drag-and-drop to be too dangerous in such cases, and there is nothing that can be done about this.

However, with version 3.0 the check box "Run admin once" unticks itself, so you cannot forget any more that you've ticked it. 

    
## Default version
    
Note that the default version of Dyalog APL to be used is saved on a per-user basis in the Windows Registry.

If there is no such RegKey yet, the first of the list of all installed APLs is defined as default. The user might change this at any time by selecting the appropriate version and then selecting "Make currently selected APL the defaults" from the "Options" menu.

The default is used in two scenarios:

* When Launchy is fired up the default version is pre-selected.
* By selecting "Select the default version" from the "Options" menu (F5) you can easily jump to the default version.


## License, copyright, creator

Launchy was created by Kai Jaeger. It is sponsored by APL Team Ltd. 

Launchy comes with an MIT license.
    
For details go to <https://github.com/aplteam/Launchy>