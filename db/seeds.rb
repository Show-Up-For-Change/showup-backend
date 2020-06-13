# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
require 'byebug'


def seed_sample_actions
  Action.destroy_all
  
  CSV.foreach("./db/revised.csv", headers: true, header_converters: :symbol, converters: :all) do |row|
    Action.create(row.to_hash)
  end

end

def seed_thought_leaders
  ThoughtLeader.create(handle: "osopepatrisse", link_url: "https://www.instagram.com/osopepatrisse/", image_url: "")
end

seed_sample_actions
# seed_thought_leaders

###############
# Questions
# what do we want to do with duration?
# how does type work? Does it need to be in the db?


###############
# 1. update our schema **
