# Rails Base Template

This is a basic rails applicaiton with the basic technlologies that I use to build a webapp.  
It is a multi page app in the classic rails multipage style.  The design (for what it is worth) is not really for an 
end user, but for a site administrator. 

We assume that you are
using docker and heroku and that both are installed... but that is all that is required since the rails itself runs in docker.

This basic webapp has no authentication or APIs

## Technologies Used

* rails 5
* postgres db
* bootstrap 4
* docker & docker-compose
* rspec, factory_bot, (faker)
* chartkick & google charts
* groupdate to group for charts
* font awesome for the icons
* Heroku (for my deployment)

## Command Cheats

* docker-compose build
* docker-compose up
* docker-compose down

To connect in another window

* docker-compose exec app /bin/bash

To deploy to heroku

* git remote -v           # to see if heroku set up
* heroku create           # one time to create the repo
* git push heroku master  # will push and build
* heroku open             # will open in default browser
