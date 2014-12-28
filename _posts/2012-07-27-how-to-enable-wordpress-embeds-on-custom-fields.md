---
title: How to Enable WordPress Embeds on Custom Fields
author: John Turner
layout: post
permalink: /how-to-enable-wordpress-embeds-on-custom-fields/
standard_seo_post_level_layout:
  - 
dsq_thread_id:
  - 808184485
dsq_needs_sync:
  - 1
categories:
  - Blog
---
Starting in Version 2.9 WordPress added a super cool feature that lets you embed videos, images and other media by simply adding the source url in the post. So for example you could at the url &#8220;https://www.youtube.com/watch?v=PaUFSW3bxF8&#8243; and the video would be automatically added to your post. WordPress currently support auto-embeds from these sources:

  * [YouTube][1] (only public videos and playlists &#8211; &#8220;unlisted&#8221; and &#8220;private&#8221; videos will not embed)
  * [Vimeo][2]
  * [DailyMotion][3]
  * [blip.tv][4]
  * [Flickr][5] (both videos and images)
  * [Viddler][6]
  * [Hulu][7]
  * [Qik][8]
  * [Revision3][9]
  * [Scribd][10]
  * [Photobucket][11]
  * [PollDaddy][12]
  * [WordPress.tv][13] (only [VideoPress][14]-type videos for the time being)
  * [SmugMug][15] (WordPress 3.0+)
  * [FunnyOrDie.com][16] (WordPress 3.0+)
  * [Twitter][17] (WordPress 3.4+)

<!--more-->

  
You can add more sources <a href="http://codex.wordpress.org/Embeds#How_Can_I_Add_Support_For_More_Websites.3F" target="_blank">programmatically</a> or with a plugin called <a href="http://wordpress.org/extend/plugins/embedly/" target="_blank">Embedly</a>.

I wanted to this feature to my[ Coming Soon plugin][18] but it was not obvious on how to do so. I started hunting down the function that enabled this functionality on the post by searching for all the filters that ran on the template tag &#8220;the_content&#8221;. I found that on line 1056 in the file /wp-includes/media.php the following code was called:

<pre class="prettyprint">// Attempts to embed all URLs in a post
if ( get_option('embed_autourls') )
    add_filter( 'the_content', array(&#038;$this, 'autoembed'), 8 );</pre>

The method autoembed is part of a class called WP_Embed which is defined as &#8220;API for easily embedding rich media such as videos and images into content.&#8221;

So this was the function I need to pass my custom field content into to get the auto embed urls. I discover this was class was in the $GLOBALS array. so now all I had to do was call the method. Here&#8217;s the code.

<pre class="prettyprint">if(isset($GLOBALS['wp_embed']))
    $content = $GLOBALS['wp_embed']->autoembed($content);</pre>

This would run your content through the <a href="http://oembed.com/" target="_blank">oEmbed</a> process of getting the html for the media urls.

If anyone knows of a better way to do this please let me know in the comments.

 [1]: http://www.youtube.com/ "http://www.youtube.com/"
 [2]: http://vimeo.com/ "http://vimeo.com/"
 [3]: http://www.dailymotion.com/ "http://www.dailymotion.com/"
 [4]: http://blip.tv/ "http://blip.tv/"
 [5]: http://www.flickr.com/ "http://www.flickr.com/"
 [6]: http://www.viddler.com/ "http://www.viddler.com/"
 [7]: http://www.hulu.com/ "http://www.hulu.com/"
 [8]: http://qik.com/ "http://qik.com/"
 [9]: http://revision3.com/ "http://revision3.com/"
 [10]: http://www.scribd.com/ "http://www.scribd.com/"
 [11]: http://photobucket.com/ "http://photobucket.com/"
 [12]: http://www.polldaddy.com/ "http://www.polldaddy.com/"
 [13]: http://wordpress.tv/ "http://wordpress.tv/"
 [14]: http://videopress.com/ "http://videopress.com/"
 [15]: http://www.smugmug.com/ "http://www.smugmug.com/"
 [16]: http://www.funnyordie.com/ "http://www.funnyordie.com/"
 [17]: http://twitter.com/ "http://twitter.com"
 [18]: /features/ "Coming Soon Pro Features"