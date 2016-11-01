# README

## "FreshTomatoes - Movie Reviews" Coding Assignment

This project was made using Rails5 and ReactJS through the rails-react gem to serve the front end.

To get the server running, run the following commands:
> Requires ruby-2.3.1 to be installed
```
# Clone the repo
git clone https://github.com/EmilioZand/FreshTomatoes

# Navigate to FreshTomatoes directory
cd FreshTomatoes

# Install all gem dependencies
bundle install

# Create db and run migrations
rake db:create
rake db:migrate

# Start the server
rails s
```
FreshTomatoes can be found at localhost:3000 by default

## Project Requirements

"FreshTomatoes - Movie Reviews API" Coding Assignment

  - Design a REST API for Movie Reviews - you may choose a technology/framework of your choice (.NET, Java, NodeJS etc)
  - structure can be similar to  http://private-05248-rottentomatoes.apiary-mock.com/
  - API should have the ability to read and write movies from a database (or in memory)
  - ** Bonus points for - security and coding best practices
 
"FreshTomatoes - Movie Reviews Client" Coding Assignment
  - Use the REST API above to build a UI Client - you may choose a framework/platform of your choice (AngularJS, Backbone.js, iOS, Android etc)
  - Display a list of movies with their thumbnail/images and ratings
  - Click on movie name shall reveal/show description of the movie
  - Include a search bar/filter to look up movies from the list that is displayed on the page
  - ** Bonus points for - offline capability, design and ui layouts
