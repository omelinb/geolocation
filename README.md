Description
-----------

Test application with api for getting people at a specific distance(30km) and for getting person's profile.


System Dependencies
-------------------

- Ruby 2.5.3 (install with [rbenv](https://github.com/sstephenson/rbenv))
- Rubygems
- Bundler (`gem install bundler`)
- PostgreSQL


Database creation
-----------------

Add data about your pguser in /config/database.yml:  
&nbsp;&nbsp;host: localhost  
&nbsp;&nbsp;user: pg_user  
&nbsp;&nbsp;password: pg_password  
  
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
