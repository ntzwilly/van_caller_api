# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

addresses = ["28 Elizabeth St", "2-42 Brandon St", "64 Wilbur St", "70 Derby St", "74 Humphrey St", " 105 Leslie St", "82 Walsh St"]

addresses.each { |address| Location.create(street: address) }

