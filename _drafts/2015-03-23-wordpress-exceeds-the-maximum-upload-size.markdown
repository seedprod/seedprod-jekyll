---
title:  Solve the Exceeds the Maximum Upload Error in WordPress
author: John Turner
layout: post
description: "How to increase the maximum upload file size in WordPress"
date: "2015-03-24"
image: /images/wordpress-download-btn.png
permalink: /wordpress-exceeds-the-maximum-upload-size/
categories:
  - Blog
---

Some host set the default upload size for WordPress to 2MB which is extremely low. I've had several customers of my [Coming Soon Plugin][1] for WordPress complain or request refunds when they get this error because they think it's an issue with the plugin. In reality this is just a simple setting you can change within your php.ini settings on your host. Some host even have a built in control panel to change the upload value.

To change this value fist check with your host documentation where the php.ini is located.

Here's Bluehost's documentation:
Here's GoDaddy's documentation:

After you locate this file you juste need to change two values.

upload_max_filesize
post_max_size




[1]: https://www.seedprod.com
