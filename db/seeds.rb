# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
lanes = Lane.create([{name: 'Open'}, {name: 'Development'}, {name: 'Test'}, {name: 'Approved'}])
lanes.reduce(nil) {|previous, cur| cur.previous_lane = previous; cur.save!; cur}
