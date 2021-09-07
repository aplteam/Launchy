[parm]:title             = 'Launchy Release Notes'

# Launchy Release Notes


## 7.2.0 from 2021-09-07

* New INI entry `[CONFIG]CommandLine` introduced. 
* Bug fixes
  * Size of the field WSSIZE was too small for three-digit figures like "245M".

## 7.1.1 from 2021-04-01

* Bug fix: Version 7.1.0 introduced a bug: both command line parameters `stop_in_setup` and `exec_setup=0` were not provided with a leading hyphen as they should.

  If you do not use either of them then in your `Ssetup.dyalog` then there is no point in upgrading.

## 7.1.0 from 2021-03-29

**Note:** _We experienced some problems when trying to update our Launchy installations. We cannot figure out what is causing this, but uninstalling Launchy first, and then installing it again avoids the problem._

* WSL removed from Launchy

  Microsoft made changes to WSL2 that make it impossible to support WSL2 from Launchy

* The GUI was cleaned up

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
