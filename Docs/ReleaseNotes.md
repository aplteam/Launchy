[parm]:title             = 'Launchy Release Notes'

# Launchy Release Notes

## 6.3.3 from 2019-11-06

* Bug fix: Asking for the online help always showed the help for the default APL rather than the currently selected APL.

## 6.3.2 from 2019-09-15

The options `stop_in_setup` and `exec_setup` were not handled correctly.

Note that Launchy cannot specify them as flags because in versions prior to 17.1 the interpretation of the command line was buggy. In order to overcome those issues the hyphen cannot be used to indicate a flag.

A complete history of release notes is [available on GitHub](https://github.com/aplteam/Launchy/releases)