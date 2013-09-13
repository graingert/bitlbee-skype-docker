# hubot-skype

## installation

First, you have to get hubot-skype all up and running on your own linux box.
Why?  Because you have to do a few manual steps to run Skype headless with
hubot.  Follow the instructions on the [hubot website](https://github.com/github/hubot/tree/master/docs)
and on the [hubot-skype website](https://github.com/netpro2k/hubot-skype).


1. Click the EULA on the first run
2. When you run hubot-skype, it opens a Skype prompt to ask you if it's okay to allow api access.  Click "yes".
3. Since you did all that, you might as well login to Skype and ask it to remember your password.  Now it will just run without user intervention.

## configuration

Now that you've done all that fun stuff, configure your hubot.

1. Copy your $HOME/.Skype directory to this directory.
2. Edit your Dockerfile to set HUBOT_NAME to whatever you want your hubot to respond to.
3. Edit hubot-scripts.json to your heart's content.

## build and run

Finally, `docker build .` and `docker run <containerid>`.  Hooray, it all
works!
