# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u1 = User.create({f_name: 'Meredith',l_name: 'Salguero',e_mail: 'Mer@yahoo.com',commitment:'I pledge to fly on April 22.',org: 'Foundation Awesome',share_info?: false})

u2 = User.create({f_name: 'David',l_name:'Hickey',e_mail: 'DavidIsKool@gmail.com',commitment: 'I pledge to teleport on Earth Day.', org: 'David and Goliath',share_info?: true})

s1 = SocialHandle.create({twitter: '@davidVgoliath', instagram: '@bob', user_id: 2})

