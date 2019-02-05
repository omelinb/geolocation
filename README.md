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

Add next information after line 22 (pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>) in /config/database.yml:  
host: localhost  
user: your_pg_user  
password: your_pg_user_password  
  
- rails db:create  
- rails db:migrate  
- rails db:seed  


API
---

- /users/?coords=latitude,longitute &nbsp; **GET** Get lisf of people closer than 30km  
- /users/1 &nbsp; **GET** Get person's profile


Examples
--------
```shell
curl http://localhost:3000/users/?coords=11.023666,12.326888
curl http://localhost:3000/users/6
```
