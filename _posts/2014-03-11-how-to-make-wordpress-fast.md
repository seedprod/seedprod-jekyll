---
title: How to make your WordPress Site Super Fast with Cheap Hosting
author: John Turner
layout: post
permalink: /how-to-make-wordpress-fast/
dsq_thread_id:
  - 2409394757
dsq_needs_sync:
  - 1
categories:
  - Blog
  - How To
tags:
  - CloudFlare
  - performance
---
WordPress hosting comes in all shapes and sizes and there are lots of players in the market. Generally how things works is the more you pay for hosting the faster your site is. At least this has been my experience.

So a WordPress site hosted on <a class="thirstylink" href="/go/godaddy/" target="_blank" rel="nofollow">GoDaddy</a> or some other shared host is typically super slow. Where as a site hosted on  <a class="thirstylink" href="/go/wp-engine/" target="_blank" rel="nofollow">WPEngine</a> or another managed host are super fast. I&#8217;m going to show you how to get those super fast speeds on a cheap WordPress hosting plan.

### I Feel the Need for Speed

We all know that adding <a href="http://cloudflare.com" target="_blank">CloudFlare</a> can speed up your site. The way it works is CloudFlare acts as a proxy and stores all your images and other assets and serves them from a global content distribution network. The actual request for the page however still hits your hosting provider and has to be processed. On a cheap host this is usually the slow part. You can add a caching plugin and that can help a bit, but there&#8217;s actually a cooler trick you can use with <a href="http://cloudflare.com" target="_blank">CloudFlare</a> to have your website&#8217;s page html be server from CloudFlare&#8217;s CDN making it blazing fast.

Here&#8217;s a video compares of 4 different hosting provider.

org = My live site hosted on WPEngine  
cheap = GoDaddy&#8217;s Shared Hosting Plan  
do = DigitalOcean&#8217;s $5 VPS  
managed = GoDaddy&#8217;s Managed WordPress



As you can see the cheap GoDaddy hosting plan is the slowest, which is to be expected. All the other ones load just over 2 seconds.

### Captain Prepare for Warp Speed

To speed things up on the cheap hosting we are going to use CloudFlare to host our pages html and completely bypass our cheap server. How do we do this?

We tell CloudFlare to &#8216;<a href="https://support.cloudflare.com/hc/en-us/articles/200172366-How-do-I-cache-everything-on-a-URL-" target="_blank">Cache Everything</a>&#8216; and use &#8216;<a href="http://blog.cloudflare.com/introducing-pagerules-fine-grained-feature-co" target="_blank">Page Rules</a>&#8216; to bypass the cache for the WordPress admin section. You&#8217;ll need 3 pages rules to achieve this and that just happens to be how many come with the CloudFlare free plan.

Here&#8217;s how to set up the rules after your login to CloudFlare.

&nbsp;

The 1st rule you want to add is to tell CloudFlare to **bypass** the **wp-login.php** page so you can log in.

[<img class="alignnone size-large wp-image-661" alt="rule1" src="/wp-content/uploads/2014/03/rule1-600x700.png" width="600" height="700" />][1]

&nbsp;

The second rule tells CloudFlare to **bypass** the **wp-admin**.

[<img class="alignnone size-large wp-image-659" alt="rule2" src="/wp-content/uploads/2014/03/rule2-600x767.png" width="600" height="767" />][2]

The last rule tells CloudFlare to **cache everything for 1 hour** . You can set this higher.

[<img class="alignnone size-large wp-image-660" alt="rule3" src="/wp-content/uploads/2014/03/rule3-600x780.png" width="600" height="780" />][3]

Note the order this is import because rules are processed in order.<img class="alignnone size-large wp-image-657" style="line-height: 1.5em;" alt="2014-03-11_15-23-16" src="/wp-content/uploads/2014/03/2014-03-11_15-23-16-600x172.png" width="600" height="172" /><span style="line-height: 1.5em;"><br /> </span>

After you set this up you can then visit your site check to see if it&#8217;s being server from CloudFlare by checking the headers using Chrome&#8217;s Dev tools. This 1st time will likely be a miss, after that you should see a hit in the headers like this.

[<img class="alignnone size-large wp-image-658" alt="2014-03-11_15-28-34" src="/wp-content/uploads/2014/03/2014-03-11_15-28-34-600x457.png" width="600" height="457" />][4]

&nbsp;

Congrats you now have a super fast site on a cheap host!

See the results:

http://youtu.be/TWpdlw0VOEk&rel=0

As you can see the cheap GoDaddy hosting is now just as fast.

Here&#8217;s a head to head comparison to <a class="thirstylink" href="/go/wp-engine/" target="_blank" rel="nofollow">WPEngine</a> against <a class="thirstylink" href="/go/godaddy/" target="_blank" rel="nofollow">GoDaddy</a> with <a href="http://cloudflare.com" target="_blank">CloudFlare</a> Cache Everything

http://youtu.be/ZCiCK2po1JM&rel=0

### Whoa, Whoa, Whoa Stop the Clock

So this is great but now you are probably asking &#8220;What&#8217;s the catch?&#8221; We&#8217;ll you&#8217;re right there is one. So now that all your content is being cached what happens if someone adds a comment or something else changes on your site. We don&#8217;t want to have to keep going in and clearing CloudFlare&#8217;s cache.

No worries, the mighty WordPress plugin system comes to the rescue. Use <a href="http://wordpress.org/plugins/disqus-comment-system/" target="_blank">Disqus</a> to offload comments and this <a href="http://wordpress.org/plugins/cloudflare-cache-purge/" target="_blank">nifty plugin</a> to automagically purge  CloudFlare&#8217;s cache when you make a post or page change in WordPress.

Do not use this method for a WordPress e-commerce site since there are so many parts of the site that need to be dynamic. Also I&#8217;m not telling you to drop your awesome managed host in favor of this. But if the use case is right then this makes cheap hosting for WordPress site super fast!

 [1]: /wp-content/uploads/2014/03/rule1.png
 [2]: /wp-content/uploads/2014/03/rule2.png
 [3]: /wp-content/uploads/2014/03/rule3.png
 [4]: /wp-content/uploads/2014/03/2014-03-11_15-28-34.png