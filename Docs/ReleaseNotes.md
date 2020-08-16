[parm]:title             = 'Launchy Release Notes'

# Launchy Release Notes


## 7.0.2 from 2020-08-16

* Launchy crashed in machines that had no WSL or no Dyalog APL installed withing WSL

## 7.0.1 from 2020-07-26

* Launchy crashed in case the APL disappeared that was chosen as the default.
* In WSL, only versions better than 17.0 can be started. The reason is that 17.0 does not connect with Ride though syntactically all is fine.

## 7.0.0 from 2020-06-10

**Note:** _With version 7.0 Launchy became a 64-bit application. You are advised to **uninstall** any older version of Launchy "manually"!_

* Launchy can now start versions of Dyalog APL installed on Ubuntu under WSL.

  Note however that for unknown reasons only 18.0 and 17.1 cooperate and connect with the instance of Ride that is also started by Launchy. With 17.0 both Dyalog and Ride are started, but they do not connect. If you need this: pester Dyalog!

* The commands in the "Options" menu work on versions of Dyalog APL installed in Ubuntu under WSL.
* The way Unicode/Classic and 64/32 bit versions are presented has been improved.
* The "Edit+Trace" tab has been removed from Launchy.

* Version 7.0 requires two additional sections in the INI file in case you want to start any Dyalog version under Linux: `[WSL_CMD]` and `[WSL_SET]`.

  While `[WSL_CMD]` is used to set certain WSL-specific parameters, `[WSL_SET]` is passed onto the command line. For example, specifying `files=30` in this section lets Launchy add `files=30` to the command line.

* To keep WSL and standard APL in sync a new section `[STD_SET]` has been invented  which may contain parameters that are supposed to go onto the command for Windows versions of Dyalog.
