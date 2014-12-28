---
title: Controlling Sidebars in Thematic
author: John Turner
layout: post
permalink: /controlling-sidebars-in-thematic/
categories:
  - Blog
---
I started using [Thematic][1] a couple of weeks ago and have absolutely fallen in love it with. Mucho hooks and filters, which is key to customizing just like WordPress.

I needed a way to control the primary and secondary sidebar and which pages they would show up on without a plugin [[Widget Logic][2]] . After digging through the Thematic code and finding this awesome [breakdown][3] of Thematic. I discovered that I could shove some logic code in the Thematic hook ‘thematic_abovemainasides’. In fact you can shove the code in other Thematic hooks to control any Thematic widgetized area.

The code below shows the secondary sidebar only on the blog page and single pages, all other pages show the primary sidebar.

<script src="https://gist.github.com/272626.js"><script>

 [1]: http://themeshaper.com/
 [2]: http://wordpress.org/extend/plugins/widget-logic/
 [3]: http://bluemandala.com/thematic/thematic-structure.html
