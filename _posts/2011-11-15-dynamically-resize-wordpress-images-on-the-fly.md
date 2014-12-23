---
title: Dynamically Resize WordPress Images On-the-Fly
author: John Turner
layout: post
permalink: /dynamically-resize-wordpress-images-on-the-fly/
dsq_thread_id:
  - 472724680
dsq_needs_sync:
  - 1
categories:
  - Blog
---
Creating multiple image sizes in WordPress is quite easy when the image is attached to a post or page. Theme.fm has an excellent [write up][1] on how to do this with the [add\_image\_size][2] function. The problem with this method is that it creates a lot of bloat because for every image uploaded it&#8217;s sized to this new size even if you&#8217;re not going to use it. Also getting the different available sizes from just a url is a pain.

To side step this issue Theme and Plugin developers have resorted to using scripts like [TimThumb][3] , which recently have a [major vulnerability][4] discovered. Another script that can generate images on the fly is called [vt_resized][5]. This script is nice because it uses native WordPress functions to generate the new image. The only is issue is that it does not support WordPress Multisite. Here&#8217;s a modified version of the script with crude multisite support.

If you find a bug let me know. Hopefully WordPress will provide a similar function in the WP core in the future.

 [1]: http://theme.fm/2011/08/images-image-sizes-and-post-thumbnails-in-wordpress-1385/
 [2]: http://codex.wordpress.org/Function_Reference/add_image_size
 [3]: http://code.google.com/p/timthumb/
 [4]: http://blog.vaultpress.com/2011/08/02/vulnerability-found-in-timthumb/
 [5]: http://core.trac.wordpress.org/ticket/15311