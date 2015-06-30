# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Video.create(title: 'Family Guy', desc: 'Funny show', small_cover_url: 'family_guy.jpg', large_cover_url: 'family_guy.jpg')
Video.create(title: 'Futurama', desc: 'Funny future show', small_cover_url: 'futurama.jpg', large_cover_url: 'futurama.jpg')
Video.create(title: 'Monk', desc: 'Funny detective show', small_cover_url: 'monk.jpg', large_cover_url: 'monk_large.jpg')
Video.create(title: 'South Park', desc: 'Terrible show', small_cover_url: 'south_park.jpg', large_cover_url: 'south_park.jpg')
