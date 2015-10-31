---
title: Solve the Exceeds the Maximum Upload Error in WordPress
author: John Turner
layout: post
description: How to increase the maximum upload file size in WordPress
date: "2015-03-24"
permalink: "/wordpress-exceeds-the-maximum-upload-size/"
categories: 
  - Blog
published: true
---


## The Problem
Some hosted![photo-1445251836269-d158eaa028a6.jpg]({{site.baseurl}}/images/photo-1445251836269-d158eaa028a6.jpg)
 set the default upload size for WordPress to 2MB which is extremely low. This can cause an error when you try to upload files that are larger than this size.

The error would see would be something like:

> File exceeds the maximum upload size for this site.

or

> Are you sure you want to do this?


I've had several customers of my [Coming Soon Plugin][1] for WordPress complain or request refunds when they get this error because they think it's an issue with the plugin.

## The Solution

In reality this is just a simple setting you can change within your php.ini settings on your host. Some host even have a built in control panel to change the upload value.

To change this value fist check with your host documentation where the php.ini is located.

[Bluehost's Documentation](https://my.bluehost.com/cgi/help/128)

[GoDaddy's Documentation](https://support.godaddy.com/help/article/1475/php-upload-limits-on-shared-hosting?locale=en)

After you locate the php.ini file you just need to change two values. Search for these two parameters below and set the value to be 32M and save.

<code>
upload_max_filesize = 32M
</code>

<code>
post_max_size = 32M
</code>

That should be it!

If you are not sure just contact your host and they can assist.


[1]: https://www.seedprod.com
