# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
User.create(
  name:      'Alex',
  surname:   'K',
  age:       27,
  gender:    0,
  latitude:  17.235423,
  longitude: 21.178232)
# ...
User.create(
  name:      'Michail',
  surname:   'M',
  age:       32,
  gender:    0,
  latitude:  7.438972,
  longitude: 8.231124)
# ...
User.create(
  name:      'Mariya',
  surname:   'M',
  age:       21,
  gender:    1,
  latitude:  4.435972,
  longitude: 5.778824)
# ...
User.create(
  name:      'Anton',
  surname:   'V',
  age:       26,
  gender:    0,
  latitude:  32.4334972,
  longitude: 26.239924)
# ...
User.create(
  name:      'Lena',
  surname:   'M',
  age:       22,
  gender:    1,
  latitude:  11.023122,
  longitude: 12.329082)
# ...
User.create(
  name:      'Anna',
  surname:   'L',
  age:       24,
  gender:    1,
  latitude:  11.026672,
  longitude: 12.342209)
# ...
User.create(
  name:      'Oleg',
  surname:   'J',
  age:       28,
  gender:    0,
  latitude:  9.438573,
  longitude: 6.111124)
