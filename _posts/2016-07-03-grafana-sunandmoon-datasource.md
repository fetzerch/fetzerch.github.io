---
layout: post
title: Sun and Moon Datasource Plugin for Grafana
description: The Sun and Moon Datasource Plugin for Grafana calculates the
             position of Sun and Moon as well as the Moon illumination
             for visualization with Grafana.
comments_id: 7
images:
  - name: grafana-sunandmoon-datasource.png
    text: Grafana screenshot showing the Sun and Moon Datasource Plugin.
---

While working on [atMETEO][atmeteo], I found it useful to bring the measured
temperature and atmospheric pressure values into relation with the position
of the sun or the current moon phase and see how they correlate.
Back then when [Grafana][grafana] only supported the [Graphite][graphite]
datasource this was done with a simple script that calculated those
values every minute and stored them in the Graphite database along with the
other measurements.

Now that Grafana supports a sophisticated plugin framework ([starting
with v3.0][grafana3]), I have created the [*Sun and Moon Datasource Plugin for
Grafana*][grafana-ds] which uses [SunCalc] to calculate the position
of sun and moon on demand when rendering on the frontend. Additional features
are the calculation of the moon illumination and annotations for various events
such as sunrise or sunset.

{% include image.html image="grafana-sunandmoon-datasource.png" %}

Like all Grafana plugins the [*Sun and Moon Datasource Plugin*][grafana-ds] is
now hosted on [Grafana.net][grafana-net] and the source code is available in a
[GitHub repository][github-ds]. An [example dashboard][grafana-db] can be found
as well.

## Technical aspects

The main advantage of doing the calculation in a datasource on the client side
is that the values don't have to be pregenerated which is not optimal with
Graphite because it does not allow to submit future values and therefore the
calculation has to be done just in time.

From a technical point of view the plugin is interesting because as of today
it is the only Grafana plugin that doesn't rely on a server providing the data.
Therefore it might be a useful example for new plugin authors.

## Feedback

When submitting the plugin to [Grafana.net][grafana-net] I received very
positive feedback from [raintank], the company behind Grafana and
[Torkel Ödegaard][torkel] even demoed the datasource in his talk at this year's
[Monitorama][monitorama] which happened to take place two days after I
created the Pull Request on GitHub. Thanks for this!

<iframe width="720" height="400"
src="https://www.youtube.com/embed/1SlljMU9V5k?start=6748&end=6810"
frameborder="0" allowfullscreen></iframe>

## Outlook and further work

The current version of the plugin implements all features that [SunCalc]
currently offers. Nevertheless there are already a few ideas for future
improvements.

I could imagine that the plugin might be useful when monitoring
photovoltaic systems (maybe even solar parks). For this the calculation
of the clear sky radiation could be added. Additionally the annotations could
be extended to be able to show additional astronomic events such as full and
new moon or solstices/equinoxes and perihelion/aphelion.

If you have additional ideas or want to help out for example with the
calculation of the mentioned values, please use the
[issue tracker on GitHub][github-i].

[atmeteo]: {{ site.baseurl }}{% post_url 2015-05-20-atmeteo %}
[github-ds]: https://github.com/fetzerch/grafana-sunandmoon-datasource
[github-i]: https://github.com/fetzerch/grafana-sunandmoon-datasource/issues
[grafana]: https://grafana.com
[grafana3]: https://grafana.com/blog/2016/05/11/grafana-3.0-stable-released
[grafana-ds]: https://grafana.com/grafana/plugins/fetzerch-sunandmoon-datasource
[grafana-db]: https://grafana.com/grafana/dashboards/630
[grafana-net]: https://grafana.com
[graphite]: https://graphiteapp.org
[monitorama]: https://monitorama.com
[raintank]: https://raintank.io
[suncalc]: https://github.com/mourner/suncalc
[torkel]: https://twitter.com/torkelo
