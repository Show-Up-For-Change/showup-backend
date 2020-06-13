# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'


def seed_sample_actions
  Action.destroy_all

  CSV.foreach("./db/revised.csv", headers: true, header_converters: :symbol, converters: :all) do |row|
    Action.create(row.to_hash)
  end

end

def seed_thought_leaders
  ThoughtLeader.create(handle: "osopepatrisse", name: "Patrisse Cullors-Brignac", image_url: "https://instagram.fphl2-4.fna.fbcdn.net/v/t51.2885-15/e35/c180.0.1080.1080a/s320x320/103029358_117805153031396_7813097408351626670_n.jpg?_nc_ht=instagram.fphl2-4.fna.fbcdn.net&_nc_cat=108&_nc_ohc=iwlbXK8TvrQAX_sWQ7E&oh=2197c329e8e03af36830680c23a2dba5&oe=5F0E0127")
  ThoughtLeader.create(handle: "chasinggarza", name: "Alicia Garza", image_url: "https://instagram.fphl2-4.fna.fbcdn.net/v/t51.2885-19/s150x150/70786433_662120510977317_3118313644656427008_n.jpg?_nc_ht=instagram.fphl2-4.fna.fbcdn.net&_nc_ohc=gUGJQKHyGUwAX-Ur6H8&oh=e8ea78009112f786ea826dfb14e82449&oe=5F0FC3DE")
  ThoughtLeader.create(handle: "adriennemareebrown", name: "adrienne maree brown", image_url: "https://instagram.fphl2-4.fna.fbcdn.net/v/t51.2885-19/s150x150/93244089_1394440277430041_5977926707401719808_n.jpg?_nc_ht=instagram.fphl2-4.fna.fbcdn.net&_nc_ohc=E3vC7nShAv0AX_EcUCA&oh=508616f60bb7e4a546ae962245787c91&oe=5F0FEABA")
end

seed_sample_actions
seed_thought_leaders

###############
# Questions
# what do we want to do with duration?
# how does type work? Does it need to be in the db?


###############
# 1. update our schema **
