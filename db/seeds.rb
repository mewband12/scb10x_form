# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

CUISINES = %w[chinese italian japanese french belgian american indian ethiopian cuban indonesian filipino]

puts "🔫 Destroy everything ..."
User.destroy_all
Party.destroy_all
Participate.destroy_all



user = User.new email: "test0@email.com",
                password: '123456',
                password_confirmation: '123456'
user.save!
first_user = User.first

PARTY_NAMES = ["Gucci Rouge a Levres Statn Lip Colour 200000", "Gucci Rouge a Levres Statn Lip Colour 200001", "Gucci Rouge a Levres Statn Lip Colour 200002", "Gucci Rouge a Levres Statn Lip Colour 200003", "Gucci Rouge a Levres Statn Lip Colour 200004", "Gucci Rouge a Levres Statn Lip Colour 200005", "Gucci Rouge a Levres Statn Lip Colour 200006"]

PARTY_NAMES.each do |party|
  party = Party.new name: party,
                    current_member:"0",
                    max_member: "5"
  party.save!
end

puts "🌲 Seed complete ... #{User.count} Users / #{Party.count} parties / Participants data #{Participate.count}"
