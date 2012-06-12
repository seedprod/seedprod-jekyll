--- 
layout: post
title: Top 4 lessons learned from selling a premium WordPress plugin
description: Lessons learned form building an maintenance mode WordPress plugin while your site is under construction. Here they are in no particular order.
---

I released my premium [maintenance mode](/features/) and [coming soon](/features/) plugin for WordPress late last year. Since that time I have have made several distinctions as to what is important when it comes to building and selling a premium WordPress plugins and what separates it from the thousands of other plugins out there.

### 1. Customer support should be your top priority
<br>
When you sell a WordPress plugin you are really in the business of selling support since the software is open source. Therefore you should do everything in your power to make sure you offer the best customer support possible. 

* Answer emails as soon as you get them. 
* Be super courteous and nice  
* Try to go the extra mile
* Try to make sure all your customers have a great experience

Providing great customer support also has some great side benefits. You get tons of testimonials and word of mouth referrals for your product.

<br>
### 2. Use real helpdesk software
<br>
I see so many premium theme and plugin shops using forums or pure email for support. Forums are awful support platforms and usually the notifications and response times are horrendous.

I guess so many shops use them because WordPress provides supports this way. The only difference is WordPress.org is a community and you are a private business selling a product. You should be the one supporting the product directly.

I once posted a message in a support forum and I was then told expect a reply in 24-48 hrs. Are you kidding me, 24hrs to 48hrs. And if I have a follow up reply I have to potentially wait this out again... 

From this experience alone I swore off forums as a tool to provide support to my customers. Plus forums offer no reports on response times, way to identify re-occurring questions, incidents per user, and all the other features I think that I should provide when providing smart customer support.

There are many supports platforms out there and some starting at no cost. Using dedicated support software should be a no brainer.

Here are a few:
* Uservoice [http://uservoice.com](http://uservoice.com)
* Zendesk [http://zendesk.com](http://zendesk.com)
* Tender [http://tenderapp.com/](http://tenderapp.com/)
* Ticksy [https://www.ticksy.com/](https://www.ticksy.com/)
* Charm [http://charmhq.com/](http://charmhq.com/)


<br>
### 3. Use the WordPress Settings API and native UI CSS classes
<br>
When I built the initial version of my coming soon plugin I used the settings api to build it. In fact the free version of my plugin still uses it. The [Settings API](http://codex.wordpress.org/Settings_API) is WordPress's native api that allows admin pages containing settings forms to be managed semi-automatically. 

I love the Settigns API because it super stable and reliable. I made the huge mistake of using [OptionTree](http://wordpress.org/extend/plugins/option-tree/) as framework in Version 2 of my plugin. Now option tree does work as advertised and has lots of feature for beginners to get an option page up quick, but I found it to be super unstable in the "real WordPress world".

Some of the issues with the OptionTree framework I've had after stepping away form the Settings API include:

* It uses ajax for saving settings. In the "real WordPress world", a plugin from any other developer can break your plugin, especially javascript. So when you use js as your main way to post back your settings you open yourself up to a tons potential issues. I've never had this issue when using the Settings API. 

* It uses jquery's ui tab css, which tons of others developers use and more than likely are leaking their css onto your settings screen and screwing up your display. 

* It uses a round about method for escapeing quotes and other characters using addslashes and stripslashes as opposed to using WordPress's builtin [data validation](http://codex.wordpress.org/Data_Validation) functions. 

The issues above account for more than 50% of my helpdesk request. Needless to says I'm switching back to the WordPress Settings API for Version 3.  I've also started a plugin starter framework project, '_wpseed', that wraps the Settings API for easier field and validation creation you can [check it out](https://github.com/seedprod/_wpseed) on Github.

<br>
### 4. Namespace everything and I mean everything
<br>
Every plugin or theme developer should know that prefixing is the golden rule when it comes to WordPress development, but what they should also know is that this includes more than just prefixing your variables, functions and classes.

You should also be prefix your CSS classes and your 3rd party scripts. 

All your css classes should start with .my_plugin_prefix. For example:

<code>
.seed-csp3 p{
	font-size:14px;
}
</code>

This way you are only targeting the elements you need to style. You should properly [enqueue scripts](http://codex.wordpress.org/Function_Reference/wp_enqueue_script) so they only display on the page you need, but that's another post. And if you're using jQuery UI, please use their css scope function when building your theme.

Prefixing 3rd Party scripts is another gotcha. I use [lessphp](http://leafo.net/lessphp/) in my coming soon plugin to do color calculation which I found out that many others do as well. 

Using 'class_exist' was not enough to avoid conflicts. What if you have need a latter version of class but the old class version was already loaded. Or what if the other developer does not use class exist? 

To avoid conflict I rename the file with my prefix, so lessc.inc.php becomes seed-lessc.inc.php then I prefix the 3rd party class "lessc" with my prefix as well like "seed_lessc". This ensures I'm loading the class and version I intended.


Well that's it. Hopefully this will help other developers avoid some of the mistakes I've had so far. Leave your feedback or experiences in the comments below. 



