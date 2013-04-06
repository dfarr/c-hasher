require 'digest/sha1'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

host = "localhost"

hashed_password = Digest::SHA1.hexdigest("123123" + host)
hashed_password = Digest::SHA1.hexdigest(hashed_password)
User.create(:username=>"test@test.com", :password=>"123123", :hashed_password=>hashed_password)

hashed_password = Digest::SHA1.hexdigest("password" + host)
hashed_password = Digest::SHA1.hexdigest(hashed_password)
User.create(:username=>"david@farr.com", :password=>"password", :hashed_password=>hashed_password)

hashed_password = Digest::SHA1.hexdigest("c0mP1iC8ed" + host)
hashed_password = Digest::SHA1.hexdigest(hashed_password)
User.create(:username=>"jordan@goldberg.com", :password=>"c0mP1iC8ed", :hashed_password=>hashed_password)

hashed_password = Digest::SHA1.hexdigest("helloworld!" + host)
hashed_password = Digest::SHA1.hexdigest(hashed_password)
User.create(:username=>"jason@taylor.com", :password=>"helloworld!", :hashed_password=>hashed_password)
