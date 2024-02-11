---
layout: post
title: fritzcollectd - A collectd plugin to monitor FRITZ!Box routers
description: fritzcollectd is a plugin for collectd to monitor AVM FRITZ!Box
             routers. Its implementation is based on the fritzconnection Python
             module. The collected data can be visualized for instance with
             Graphite and Grafana.
comments_id: 3
images:
  - name: fritzcollectd_grafana.png
    text: Grafana screenshot showing data from fritzcollectd
---

Recently I set up [collectd], [graphite] and [grafana] to gather and visualize
statistics for the home network.

At this, I was particularly interested in monitoring my AVM FRITZ!Box router,
especially because I experience some stability problems lately.

The router exposes its status information via UPnP and fortunately there was
already a Python package available which allows to access the data from Python
scripts: [fritzconnection]. Hence I decided to implement a module that can feed
the data into collectd for further processing: [fritzcollectd].
(see the [GitHub page][fritzcollectd] for installation instructions)

Since a picture is worth a thousand words, this is how it looks:

{% include image.html image="fritzcollectd_grafana.png" %}

This dashboard is accessible on [Grafana.net][grafana-db].

[collectd]: https://collectd.org
[grafana]:  https://grafana.com
[grafana-db]: https://grafana.com/grafana/dashboards/713
[graphite]: https://graphiteapp.org
[fritzconnection]: https://github.com/kbr/fritzconnection
[fritzcollectd]: https://github.com/fetzerch/fritzcollectd

## Alternatives

At the time of writing, there were mainly two alternative approaches documented
that are worth mentioning.

At first, there was only a snippet available which is based on a Perl script.
Besides the statistics available over UPnP the example also collects
additional data scraped from the router's web interface.
Unfortunately even the simple version wasn't fast enough in my environment to
retrieve the data reliably using a 10 second interval.

Secondly, if you cannot use Python or Perl plugins it is also possible to use
collectd's [cURL-XML] plugin to call the respective SOAP actions directly and
parse the results with XPath.

[collectd-exec]: https://collectd.org/wiki/index.php/Plugin:Exec
[cURL-XML]: https://github.com/collectd/collectd/wiki/Plugin-cURL-XML-Config#fritzbox-internet-router
