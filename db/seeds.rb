# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Place.create(user_id: 1, location: "Washington D.C.")

  # Photo.create(place_id: 1, flickr_id: "http://washingtondc.riverrunfororphans.org/Washington%20DC/assets/Image/washington_dc.jpg")

Place.create(user_id: 1, location: "New York")

  # Photo.create(place_id: 2, flickr_id: "http://www.theworkingworld.org/images/NYSkyline.jpg")

Place.create(user_id: 1, location: "Kansas City")

  # Photo.create(place_id: 3, flickr_id: "http://ynpn.org/kansascity/files/2010/10/new-kc-skyline.jpg")
