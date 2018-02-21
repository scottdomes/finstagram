
A user should be able to view the photos posted in their feed

We must display a dynamic (changing) set of posts when they visit the app

We must have dynamic data

We must store that data somewhere

The best place to store data is in a SQL database

We need to be able to take data from our SQL database and send it to the view

We need a way to use our data in our actions.rb, so we can send it to our ERB file

We need a way to convert a SQL record to a Ruby hash (a model)

ActiveRecord!


Pt 2

A post belongs to a specific user

We record this by giving the post a user_id in the database

We need a way to associate the user with the posts with the specific user_id

We need a way to relate different records so we can traverse that relationship (I can get the username of the user who owns the post from the post model itself)

ActiveRecord!