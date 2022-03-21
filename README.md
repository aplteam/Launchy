# Launchy

![Launchy](https://github.com/aplteam/Launchy/blob/master/Launchy.png)

## Overview

**_Launchy_** is useful for people with several versions of Dyalog installed on their Windows machine(s). 

If your are like me then you have about 16 versions of Dyalog installed, and you need different versions for different projects / clients. **_Launchy_** simplifies the process of firing up an instance of Dyalog as well as making adjustments like...

* setting certain flags like `PropertyExposeRoot` and others
* specifying the workspace size
* setting debug flags
* specifying additional command line parameters
* running (or ignoring) a user define setup.dyalog script
* starting the APL interpreter in elevated mode (admin rights required)
* giving the interpreter a Ride

In addition to its main goal **_Launchy_** offers these features:

* Start any major version of Ride installed on your machine
* Store DSS credentials in the Registry
* Patch either the currently selected or all installed versions of Dyalog
* Edit the Registry entries for the currently selected version of Dyalog
* Display the online help for the currently selected version of Dyalog
* Open a Windows Explorer on...
  * the installation directory of the currently selected version of Dyalog
  * the help directory of the currently selected version of Dyalog
* Edit **_Launchy_**'s INI file(s)


## Preconditions

**_Launchy_** is self-contained and does not rely on anything. It is a "bound executable", meaning that it can run even on a machine with no Dyalog installed at all, although this would not make too much sense of course.


## Documentation

* Have a look at the "launchy_manual.html" file which provides details. This file will be shown in your default browser by pressing F1 in **_Launchy_** or by selecting "Help > Help on Launchy" from Launchy's menu bar.

* Pay attention to the INI file which should be self-explanatory for programmers.
