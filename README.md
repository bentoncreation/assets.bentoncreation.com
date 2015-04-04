# Tumblr + Middleman 2gether 4ever

My personal site, [bentoncreation.com](bentoncreation.com), runs on Tumblr.

Tumblr has a fantastic interface for posting blog content. But if you've ever tried to work with custom themes and assets on Tumblr, you've probably cried yourself to sleep. Okay, maybe that's just me.

If you like static site generators and you have access to your own web server, you can reduce the pain significantly by leaning on Middleman for theme development.

You'll want to set up a typical middleman app, and add:

* [tumblargh](https://github.com/jasonwebster/tumblargh) for testing your Tumblr theme in dev
* [middleman-deploy](https://github.com/middleman-contrib/middleman-deploy) for deploying your assets
* [middleman-settings](https://github.com/gregory/middleman-settings) for managing config settings like Tumblr API key, deploy user, etc. (optional)

Whenever you change your theme, the one annoying thing you'll have to do is copy and paste your build/index.html into your Tumblr HTML template.
