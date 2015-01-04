---
layout: page
title: Projects
---

Here is a list of my open source projects created in the hope that they will be
useful.

## fritzcollectd

fritzcollectd is a plugin for [collectd](http://collectd.org/) to monitor AVM
FRITZ!Box routers.

* [More information]({{ site.baseurl }}{% post_url 2014-08-23-fritzcollectd %})
* [GitHub repository](https://github.com/fetzerch/fritzcollectd)

## sync_music

This program allows you to synchronize your music library for the usage on
primitive music players that don't support the diversity of your collection.

* [GitHub repository](https://github.com/fetzerch/sync_music)

## pvr.mythtv.cmyth

The Kodi/XBMC PVR plugin for MythTV (0.25 - 0.27) based on
[libcmyth](https://github.com/cmyth/cmyth).

* [Documentation](http://wiki.kodi.tv/index.php?title=MythTV_PVR)
* [GitHub repository](https://github.com/fetzerch/xbmc-pvr-addons)

Note that the development of the plugin for MythTV 0.28+ is being continued by
[janbar](https://github.com/janbar) as
[pvr.mythtv](https://github.com/janbar/xbmc-pvr-addons).

# Open source contributions

In addition to the projects above, here is a collection of open source
contributions worth mentioning.

## Kodi/XBMC Media Center

[Kodi/XBMC](http://kodi.tv) is a popular open source media player application.
I've contributed various bug fixes and smaller features mainly in the area of
PVR.

* Kodi/XBMC:
  [Pull Requests](https://github.com/xbmc/xbmc/pulls?q=author%3Afetzerch) /
  [Commits](https://github.com/xbmc/xbmc/commits?author=fetzerch)
* PVR implementation before it has been merged into the official repository:
  [Pull Requests]
  (https://github.com/opdenkamp/xbmc/pulls?q=author%3Afetzerch) /
  [Commits](https://github.com/opdenkamp/xbmc/commits/master?author=fetzerch)

## Jenkins Job Builder

[Jenkins Job Builder](http://ci.openstack.org/jenkins-job-builder) is a tool
that simplifies the configuration of Jenkins CI jobs. I've contributed the
integration for the Valgrind and Clang scan-build publisher plugins that I'm
using for some of the projects mentioned on this page.

* Jenkins Job Builder: [Gerrit Changes]
  (https://review.openstack.org/#/q/owner:%22Christian+Fetzer%22,n,z) /
  [Commits](https://github.com/openstack-infra/jenkins-job-builder/commits?author=fetzerch)
