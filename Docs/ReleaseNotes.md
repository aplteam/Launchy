[parm]:title             = 'Launchy Release Notes'

# Launchy Release Notes


## 7.6.0 from 2023-05-17

With version 19.0 two new parameters were introduced:

* `DYALOGSTARTUPSTOP=1` tells the interpreter to stop at a very early stage in the StartupSession script

* `DYALOGSTARTUPDEBUG=1` tells the interpreter to only trap WS FULL rather than all errors at a very early stage in the StartupSession script

With this version you can set both parameters.

## 7.5.1 from 2023-04-09

* Somehow Launchy lost its ability to start Ride with a user-specific config file to be defined in the Launchy INI files --- this version brings that back.

## 7.5.0 from 2022-10-09

* Launchy now supports creating an LNK file (shortcut) with all parameters defined in Launchy.

  Note that although you may associate a keybaord shortcut with any LNK file, you can start only one Dyalog instance this way. As long as that instance is up and running pressing the keystrokes again has no effect.

* Bug fixes

  * Launchy used to add a parameter `-exec_setup=1` to the command line so that it became the last parameter. With `-cef_all` there is a Chromium-specific parameter that, when specified, _must be the last parameter_. 

   This version addresses this problem by making sure that `-cef_all` will always be the last parameter (except the workspace).

  * The build list as well as the dependency file for both package folders contained a superfluous `/`
  * The image embedded into README.md pointed to "master" rather than "main".

## 7.4.1 from 2022-03-23
 * The INI entry `[CONFIG]workdir` and the menu command “Explore work dir” were both removed. The menu command showed only when the (now removed) INI entry `[CONFIG]workdir` was not empty.
 * Bug fixes: 
   * The Help file and the release notes both did not show.
   * The build number was shown in Launchy's own caption. Should only happen in development.
   * "Check for updates" did not work anymore. Introduced with 7.4.0

## 7.4.0 from 2022-03-21

* The command line combo box got replaced by an edit field and a check box "Save on Quit"
* The feature to display the command line is active only when something is entered into the
  "Command line parameters" field, not when something for the command line comes from the INI.
* Keyboard shortcuts added/improved
* Bug fixes
  * The "Run as admin once" check box was not reset in terms of colour
  * Some tips were not displayed
  * Toggling tips did not work anymore

## 7.3.0 from 2021-10-05

* New options "DYALOGWSLOADEDSTOP" added as a check box.
* Drawing attention to non-default settings was defeated by the Windows themes strategy. Now back.

  This includes the button "Restore defaults" being functional again.
* Bug fixes
  * Only the main INI file was put on display when the menu command "Edit > Launchy's INI file(s)" was selected
  * Now superfluous INI entries removed (F32, 5977, MYUCMDS)


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
