SHELL=/bin/bash

heroku: /usr/local/bin/heroku;

/usr/local/bin/heroku: /usr/local/lib/heroku/bin/heroku
	ln -s $^ $@

/usr/local/lib/heroku/bin/heroku: heroku-linux-amd64.tar.gz
	tar -xzf heroku-linux-amd64.tar.gz -C /usr/local/lib

heroku-linux-amd64.tar.gz:
	wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz
