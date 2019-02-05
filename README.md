Description
-----------

Application for viewing people at a distance 30km.  


System Dependencies
-------------------

- Ruby 2.5.3 (install with [rbenv](https://github.com/sstephenson/rbenv))
- Rubygems
- Bundler (`gem install bundler`)
- PostgreSQL


Database creation
-----------------

rails db:create
rails db:migrate
rails db:seed


API
---

GET /users/?coords=latitude,longitute   Get lisf of people closer than 30km
GET /users/1                            Get person profile
