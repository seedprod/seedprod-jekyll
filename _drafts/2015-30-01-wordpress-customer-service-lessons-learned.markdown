---
title: WordPress Customer Service Lessons Learned
author: John Turner
layout: post
permalink: /wordpress-customer-service-lessons-learned/
categories:
  - Blog
---

<style>
pre {
    white-space: pre-wrap;       /* CSS 3 */
    white-space: -moz-pre-wrap;  /* Mozilla, since 1999 */
    white-space: -pre-wrap;      /* Opera 4-6 */
    white-space: -o-pre-wrap;    /* Opera 7 */
    word-wrap: normal;       /* Internet Explorer 5.5+ */\
    word-break: normal;
}
</style>

> You can please some of the people all of the time, you can please all of the people some of the time, but you can’t please all of the people all of the time. - John Lydgate



I have been solo entrepreneur for the past four years with my [Coming Soon Page and Maintenance Mode](http://www.seedprod.com) plugin for WordPress and that means I wear many hats. One of those hats being 'the' customer service rep. With that experience I have some insight that I'd like to share with you and some things I wish I had known before I got start.

## Expectations
When you provide a WordPress product or service, customer service should be one of your main priorities. This should be a no brainer right? But I have dealt with many 'Premium' WordPress themes, plugins and other service shops where customer service was severely lacking.

When I buy a plugin I expect friendly, accurate and prompt customer service, these are the same principles I apply to my customer service.

## The Basics
When dealing with customers or potential customers here are a few basic guidlines.

* Always use a friendly greeting and call the person by name on the first response. For example:

<pre>
Hi Jane,

Disable all plugins and see if the problem still exist.
</pre>

When you skip calling a person by their name sometimes the tone can sound like you're barking orders and unfriendly. Plus people love hearing their name.

* Leave the conversation open to follow ups. I typically end all my conversation with

<pre>
Please let me know if you have any other questions.

Thanks,
John
SeedProd.com
Founder
</pre>

I want to make it clear that we believe in our product and that we are always available if a problem occurs in the future. Also I want to make it clear who they are talking to. If you have multiple people providing support then this helps as they move up the support chain.

* Respond within the first 12 hours. I typically aim for 2 hour response during business hours but some companies I have dealt will take 48 hours or longer. In my opinion this is unacceptable. If it take 2 days to respond then it's time to hire help.

* Most customers just want a quick resolution to their issue. Try to be as to the point as possible with human tone. I typically include what is the source of the problem and the resolution.

<pre>
Hi Jim,

The reason you are having an issue is because you need to clear
your cache. See this article on the best way to this.
</pre>

This all seem pretty basic right, I can't tell you how many times I have received a one sentence reply 3 days later on a premium product and left with a bad taste in my mouth.


## Common Scenerios
Here are some ways I handle praises, conflicts and feature request.

* When someone gives you a virtual high five whether that be through an email, blog post, tweet or some other form of communication make sure to acknowledge them and thank them for it.

* When someone is critical of your product I either: ignore or listen depending on the type of comment. When someone genuinely has a complaint or issue I listen and try to defuse if they are upset and resolve.

<pre>
Customer:
I just bought your product and it doesn't work. This is really frustrating.

Me:
Hi Jeff,

Sorry for the issue! I know when I buy a product I expect it to work out of the box. Can you send me some specifics and I'll get this resolved ASAP.
</pre>

If the customer is downright rude or insulting then I either ignore or send a canned response. For example when I was first getting started someone tweeted to me that my product was overpriced and shit. I proceeded to engage and ended up in an emotionally heated conversation.  My product is my baby and at that time I took the tweet very personally. This ended badly for everyone. In hindsite it's best to ignore or have a canned response reasy you can send. I have several canned responses I resort to.

* For Non Customers who are rude I always ignore.

* Customers who are rude and I don't feel I can defuse. I just refund. Example Response:
<pre>
Sorry you feel that way. If you would a refund let me know and I can process that right away for you.
</pre>

While these are rare, you are never going to be able to please everyone. Inevitability you are going to run into these situations. It's best to determine how to deal with these in advanced instead of sending an emotionally charged response.

* Feature request just come with the territory when you have a product or service. My number one rule is never commit to a feature or give a specific date time for completion. Basically all my feature request replies go something like:

If you intend to implement:
<pre>
Thanks for the feedback. While we intend to add this I can't give you a timeline. (Otional) We hope to have it by late spring.
</pre>


If you don't intend to implement:
<pre>
Thanks for the feedback. We will look into the request but don't have any plans at the moment to implement.
</pre>

## Customer Service As A Marketing Tool

I typically leave marketing out of my customer responses but in my case I have a free product and take pre-sales questions. Don't forget to market when the opportunity presents itself.

For examples I have a few free plugins in the WordPress.org repo. After answering a suport request by a non customer I include at the end of my response:

<pre>
By the way we have a Pro Version. If you are interested in it use coupon code xxxx to save xx off. While the free version works great I think Pro Version will blow your mind. http://www.seedprod.com
</pre>

or request a review:
<pre>
If you have a chance do you mind leaving me a review! (Insert link)
</pre>

For your customers, just providing great customer service is marketing itself. Great customer service gets you word of mouth referrals, reviews and testimonials, and repeat buyers.


## Helpdesk Software
Should I just use email or should I use helpdesk specific software?

My suggestion is alway use a product built for customer support. While your gmail works great in the beginning eventually you will need features like, reports, canned replies, ability assign, track history, etc.

Here are a few companies I recommend:

* [Helpscout](http://helpscout.com) - This is what I currently use. Has a great email workflow and Docs software for your knowledge base.
* [Zendesk](http://helpscout.com) - I used to use this product. It's great but a bit much for a solo operation or small team.
* [Uservoice](http://uservoice.com) - I used to use this product as well. It really liked the backend and has a nice feedback tool. I didn't like their knowledge base software. Plus they had some uptime issues when I was testing.
* [Groove](http://groovehq.com) - I have not used this company but from what I hear it a lot like HelpScout

Plus there are many more.


So this my brain dump on my customer service journey so far. If you have any other tips I'd love to hear them in the comments.

## Bonus

### How to replace the Contact Us link in [HelpScout Docs](http://www.helpscout.net/features/docs/) with your own custom link.

As I said above I use HelpScout for my support system. They have an excellent integrated knowledge base software called Docs.
By default the have a 'Contact Us' link on each article that pops a contact forms. Since I have to ensure my users have a valid license before I provide support this does not work for me. HelpScout allows you to add javascript in the docs. So what I did is replaced the default 'Contact Us' link with my custom link that goes to an authenticate contact form.

You can see it in action at [http:support.seedprod.com](http:support.seedprod.com)

Here's the code, just add it to the Custom Code Head field in your HelpScout Docs settings.
<script src="https://gist.github.com/seedprod/7de2027ad32e1a5ee8d9.js"></script>

The only drawback is that you don't get the built in analytics in the reports on who has clicked on this link.
