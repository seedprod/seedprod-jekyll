---
title: The easiest way to add SSL to your WordPress Site
author: John Turner
layout: post
permalink: /add-ssl-https-to-wordpress-site/
dsq_thread_id:
  - 2918099238
dsq_needs_sync:
  - 1
categories:
  - Blog
---
Google recently <a href="http://googleonlinesecurity.blogspot.in/2014/08/https-as-ranking-signal_6.html#gpluscomments" target="_blank">announced</a> that they will start giving a small SEO boost to sites that use https. I&#8217;ve seen several articles pop up that explain how to add a traditional cert that you buy to your site, but this can be complex and some host even charge more to add a SSL certificate to your hosting account.

I added SSL my WordPress site in a 5 minutes and I&#8217;m going to show you how I did it.

I&#8217;m  a huge fan of Cloudflare and I&#8217;ve written a past article on making your site <a title="How to make your WordPress Site Super Fast with Cheap Hosting" href="http://seedprod.dev:8000/how-to-make-wordpress-fast/" target="_blank">crazy fast with Cloudflare</a>. In this article I&#8217;m going to explain how to use their Flexible SSL service to make your site secure (https). First I&#8217;ll preface this by saying Cloudflare currently only offers SSL on their paid plans, but they have <a href="http://blog.cloudflare.com/google-now-factoring-https-support-into-ranking-cloudflare-on-track-to-make-it-free-and-easy" target="_blank">announced</a> they plan to make it free for everyone to use soon.

So the first thing you&#8217;ll currently need is a Cloudflare Pro account. It&#8217;s $20 a month for one domain and $5 per additional domain. On the Pro plan you also get a Web Application Firewall for WordPress and other apps which is huge plus. Also when you use SSL you can enable <a href="http://blog.cloudflare.com/introducing-spdy" target="_blank">SPDY</a> which make your site well, super speedy. Some might say this is expensive but I think it&#8217;s quite a deal. When you buy a cert you have to maintain it and reinstall it when you renew it. With Cloudflare there is nothing to maintain, nothing to install.

After you get a Pro account just log into your Cloudflare dashboard and enable Flexible SSL.

[<img class="alignnone size-large wp-image-764" src="/wp-content/uploads/2014/08/2014-08-10_09-32-24-600x348.png" alt="Cloudflare Flexible SSL" width="600" height="348" />][1]

Then log in to your WordPress site and install the <a href="http://wordpress.org/plugins/wordpress-https/" target="_blank">https</a> plugin. When you configure the plugin make sure to select &#8216;Yes&#8217; on whether or not your site uses a proxy.

[<img class="alignnone size-large wp-image-765" src="/wp-content/uploads/2014/08/2014-08-10_09-37-04-600x348.png" alt="2014-08-10_09-37-04" width="600" height="348" />][2]

&nbsp;

You should be able to test your site now to see if https is working. Just type in https://yourdomain.com

The only thing left to do now is redirect all non secure traffic (http) to your secure site (https) Again to do this I use Cloudflare page rules. This will do a 301 redirect on all non secure pages.

[<img class="alignnone size-large wp-image-766" src="/wp-content/uploads/2014/08/2014-08-10_09-41-35-600x348.png" alt="Cloudflare https page rule" width="600" height="348" />][3]

&nbsp;

That&#8217;s it! Your site is now secure and faster!

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

 [1]: /wp-content/uploads/2014/08/2014-08-10_09-32-24.png
 [2]: /wp-content/uploads/2014/08/2014-08-10_09-37-04.png
 [3]: /wp-content/uploads/2014/08/2014-08-10_09-41-35.png