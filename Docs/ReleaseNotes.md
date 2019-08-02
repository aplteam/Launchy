[parm]:title             = 'Launchy Release Notes'

# Launchy Release Notes

## 6.3.1 from 2019-08-02

* Versions 15.0 and 16.0 are potentially buggy regarding command line parameters. That was the reason why ticking the check box `Stop in setup.dyalog" worked fine with 17.0 but not with 15.0 and 16.0.

  The bug can be avoided by not using a leading hyphen for a parameter. Therefore version 6.3.1 provides `stop_in_setup` on the command line rather than `-stop_in_setup`.

  _If you are taking advantage of the two command line parameters_ `exec_setup` _and_ `stop_in_setup` _then you need to take action and remove the hyphen within your script before installing Launchy 6.3.1_

A complete history of release notes is [available on GitHub](https://github.com/aplteam/Launchy/releases)