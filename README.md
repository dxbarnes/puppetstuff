puppetstuff
===========

user_fact.rb
------------

a simple fact that creates 
1. a fact "users" that shows all local users on a server.
2. a fact for every user that exists on the system with a
value of true.

My initial thought for the use of this fact was to allow myself
a way to create and set an initial password for users, and then
after the user exists, query the fact for the user so that puppet
would no longer manage the users password if the user exists.

I am sure there are better ways to do it, but I had a long weekend
and wanted to play around.
