# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Track.destroy_all

#################
## USERS & TRACKS
#################

# CREATE USERS

user1 = User.create({first_name: "Will", last_name:"Fong", email:"wfong.bk@gmail.com", password:"password"})
user2 = User.create({first_name: "Milo", last_name:"Li", email:"milo@gmail.com", password:"password"})
user3 = User.create({first_name: "Lily", last_name:"Nguyen", email:"lily@gmail.com", password:"password"})

# CREATE TRACKS

track1 = Track.create({artist: "The Beatles", title:"Get Back", url:"https://open.spotify.com/track/4MLBqAEzNN89o2M9h92Z26", notes:"Reminds me of summer of love '69", user_id: user1.id})
track2 = Track.create({artist: "The Beatles", title:"Across The Universe", url:"https://open.spotify.com/track/4dkoqJrP0L8FXftrMZongF", notes:"So trippy", user_id: user1.id})
track3 = Track.create({artist: "The Beatles", title:"Let It Be", url:"https://open.spotify.com/track/7iN1s7xHE4ifF5povM6A48", notes:"My breakup song", user_id: user1.id})
track4 = Track.create({artist: "The Beatles", title:"I've Got a Feeling", url:"https://open.spotify.com/track/3gwRWIbr5ycEVLIAXrWaw7", notes:"Happy days in the past", user_id: user2.id})
track5 = Track.create({artist: "The Beatles", title:"The Long And Winding Road", url:"https://open.spotify.com/track/3mlMpmY8oZIBFc39D9zLbh", notes:"Great roadtrip song!", user_id: user2.id})
track6 = Track.create({artist: "The Beatles", title:"I Me Mine", url:"https://open.spotify.com/track/2BMqay80iBzZTa608Y1eG1", notes:"Showerthought song", user_id: user3.id})