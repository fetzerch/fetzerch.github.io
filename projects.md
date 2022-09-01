---
layout: page
title: Projects
---

Here is a list of my open source projects created in the hope that they will be
useful.

## Sun and Moon Datasource Plugin for Grafana

The Sun and Moon Datasource Plugin for Grafana calculates the position of Sun
and Moon as well as the Moon illumination for visualization with
[Grafana](https://grafana.com).

* [More information]({{ site.baseurl }}{% post_url 2016-07-03-grafana-sunandmoon-datasource %})
* [Grafana.net](https://grafana.com/grafana/plugins/fetzerch-sunandmoon-datasource)
* [GitHub repository](https://github.com/fetzerch/grafana-sunandmoon-datasource)

## kasserver

kasserver consists of a Python library and a few command line utilities to
manage domains of the German web hosting provider All-Inkl.com through their
KAS server API.

* [GitHub repository](https://github.com/fetzerch/kasserver)
* [Python package](https://pypi.org/project/kasserver)

## wireshark_remote

wireshark_remote provides scripts that simplify executing
[Wireshark](https://www.wireshark.org/) to remotely capture network traffic
(SSH or AVM FRITZ!Box).

* [GitHub repository](https://github.com/fetzerch/wireshark_remote)
* [Python package](https://pypi.org/project/wireshark-remote)

## atMETEO

atMETEO is a project for collecting and measuring weather related data from
different sensors. The data is being collected by an ATmega based target and
sent to a computer for further processing.

* [More information]({{ site.baseurl }}{% post_url 2015-05-20-atmeteo %})
* [Documentation](https://fetzerch.github.io/atMETEO)
* [GitHub repository](https://github.com/fetzerch/atMETEO)

## fritzcollectd

fritzcollectd is a plugin for [collectd](https://collectd.org/) to monitor AVM
FRITZ!Box routers.

* [More information]({{ site.baseurl }}{% post_url 2014-08-23-fritzcollectd %})
* [GitHub repository](https://github.com/fetzerch/fritzcollectd)

## sync_music

This program allows you to synchronize your music library for the usage on
primitive music players that don't support the diversity of your collection.

* [GitHub repository](https://github.com/fetzerch/sync_music)
* [Python package](https://pypi.org/project/sync-music)

# Open source contributions

In addition to the projects above, here is a collection of open source
contributions worth mentioning.

## nymea Somfy integration

[nymea](https://nymea.io) is an open source smart home solution. I do own quite
a few motors for blinds and shutters from Somfy, so I decided to implement
support for them in nymea.

* [GitHub repository](https://github.com/nymea/nymea-plugins/tree/master/somfytahoma)

## Kodi Media Center

[Kodi](https://kodi.tv) (formerly known as XBMC) is a popular open source media
player application. As long time Kodi user, I've contributed various bug fixes
and smaller features mainly in the area of PVR. Since January 2016 I'm
an official member of Team-Kodi and have been working on Kodi's CMake based
build system.

* Kodi:
  [Pull Requests](https://github.com/xbmc/xbmc/pulls?q=author%3Afetzerch) /
  [Commits](https://github.com/xbmc/xbmc/commits?author=fetzerch)
* PVR implementation before it has been merged into the official repository:
  [Pull Requests](https://github.com/opdenkamp/xbmc/pulls?q=author%3Afetzerch) /
  [Commits](https://github.com/opdenkamp/xbmc/commits/master?author=fetzerch)

### MythTV PVR addon (pvr.mythtv.cmyth)

My involvement with Kodi (still called XBMC that time) started in 2012 with
maintaining the first version of Kodi's MythTV PVR plugin. The plugin supported
MythTV 0.25 - 0.27 and was based on [libcmyth](https://github.com/cmyth/cmyth).

* [Documentation](https://kodi.wiki/index.php?title=MythTV_PVR)
* [GitHub repository](https://github.com/fetzerch/xbmc-pvr-addons)

The development of the plugin for MythTV 0.28+ is being continued by
[janbar](https://github.com/janbar) as
[pvr.mythtv](https://github.com/janbar/pvr.mythtv).

## Jenkins Job Builder

[Jenkins Job Builder](https://docs.openstack.org/infra/jenkins-job-builder) is
a tool that simplifies the configuration of Jenkins CI jobs. I've contributed
the integration for the Valgrind and Clang scan-build publisher plugins that
I'm using for some of the projects mentioned on this page.

* Jenkins Job Builder:
  [Gerrit Changes](https://review.opendev.org/q/owner:%22Christian+Fetzer%22) /
  [Commits](https://github.com/openstack-infra/jenkins-job-builder/commits?author=fetzerch)
