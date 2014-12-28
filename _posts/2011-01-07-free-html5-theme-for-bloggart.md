---
title: Free HTML5 Theme for Bloggart
author: John Turner
layout: post
permalink: /free-html5-theme-for-bloggart/
categories:
  - Blog
---
[Download][1] my theme I created for my Google App Engine Bloggart blog.  
[  
Bloggart][2] is an awesome open source blog created by Nick Johnson.

**Features:**

  * HTML5 tags
  * Built on the [HTML5 Boiler Plate Framework][3] by Paul Irish
  * Mobile Layout using Media Queries
  * Google Fonts
  * Clean and Simple
  * Canonical Urls&#8217;s

To use canonicals urls add the code below to generators in generators.py

[python]template\_vals['canonical\_url'] = &#8216;http://&#8217; + config.host + post.path[/python]

 [1]: https://github.com/johnnytee/bloggart/zipball/master
 [2]: http://github.com/Arachnid/bloggart
 [3]: http://html5boilerplate.com/
