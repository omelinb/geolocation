Description
-----------

Test API application for viewing people at a specific distance(30km) and for getting person's profile.


System Dependencies
-------------------

- Ruby 2.5.3 (install with [rbenv](https://github.com/sstephenson/rbenv))
- Rubygems
- Bundler (`gem install bundler`)
- PostgreSQL


Database creation
-----------------

- rails db:create  
- rails db:migrate  
- rails db:seed  


API
---

- /users/?coords=latitude,longitute &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GET   Get lisf of people closer than 30km  
- /users/1 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GET                           Get person's profile


Examples
--------

