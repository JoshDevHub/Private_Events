# Private Events

Private Events is a small website that allows users to create Events and attend events created by other users. Building this a way to learn more about Rails and Active Record associations.

Currently, this is more of a v0.9 release, as there are a few things I want to improve and one key feature I want to add. I will be suspending active work on this for a few weeks while I work on learning testing in a Rails context and building up more advanced knowledge of forms.

# Getting Started / How to Use

You can visit a live site on [Heroku](https://cryptic-peak-88776.herokuapp.com/). Note that because I'm on a free plan, the dyno  hosting this site will regularly sleep. This can make the app slow to load on initial visits as the dyno may need to 'wake up'.

For running this app locally, you'll want to first have the following prerequisites:
```
Ruby >= 3.0.3
Rails >= 7.0.2
Bundler >= 2.2.32
PostgreSQL >= 12.9
```
Assuming you're good to go on that front, you can enter the following commands to run the site locally
```
git clone git@github.com:JoshDevHub/Private_Events.git
cd private_events
bin/setup
bin/dev
```
You can then visit http://localhost:3000/ in your browser to view the site locally.

# Current Features

* User registration & session management through the Devise gem
* Users can create, update, and delete Events
* All visitors can read Events
* Users can become an attendee to other users' events
* Robust and responsive styles utilizing SASS and BEM methodology

# Planned Features

* Build unit and system tests
* While creating an event, give users the option to make the event 'private'
* If an event is private, other users can only attend through invitations from the host

# Special Thanks

Special thanks to [The Odin Project](https://theodinproject.com) :heart: