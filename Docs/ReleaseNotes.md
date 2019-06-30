[parm]:title             = 'Launchy Release Notes'

# Launchy Release Notes

## 6.2.0 from 2019-06-30

* The user may now decide to ignore Dyalog versions without DSS credentials when patching;
  handy for beta versions.
* "Check for new version" updated to latest `GitHubAPIv3`.
* Bug fix: the `exec_setup` option was lacking a hyphen. That potentially posed a problem when
  other flags were specified on the command line.

## 6.1.0 from 2019-06-02

* Extracts the download URL for a new version of Launchy from GitHub's "Releases" HTML page and then uses this URL to download the installer via your default browser.