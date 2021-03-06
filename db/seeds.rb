# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Channel.channels_name.each do |channel|
  channel = Channel.find_or_create_by(name: channel)
  5.times do
    channel.shows.find_or_create_by(name: Channel.random_show_name.downcase, show_time: Channel.random_time)
  end 
end

