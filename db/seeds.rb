# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# name edition manufacturer category description details price
Product.create(:name => 'Dixit', :manufacturer => 'Libellud', :category => 'Card game', :description => 'Nice game', :details => 'for kids', :price => '19.90')

Product.create(:name => 'Agricola', :manufacturer => 'Z-Man Games', :category => 'Strategy Game', :description => 'In Agricola, you\'re a farmer in a wooden shack with your spouse and little else', :details => 'complex game', :price =>'34.00')

Product.create(:name =>'Discworld:Ankh-Morpork', :manufacturer => 'Treefrog Games', :category => 'City building', :description => 'Based on Terry Pratchett novels', :details => 'best with 4 players', :price =>'23.50')

Product.create(:name => 'Bugs & Co', :manufacturer => 'Libellud', :category => 'Family game', :description => 'Game for 2 to 6 players', :details => 'for kids', :price =>'15.00')

Product.create(:name => 'Carcassonne', :manufacturer => 'Rio Grande Games', :category => 'Map building game', :description => 'Carcassonne is a tile-placement game in which the players draw and place a tile with a piece of southern French landscape on it. The tile might feature a city, a road, a cloister, grassland or some combination thereof, and it must be placed adjacent to tiles that have already been played, in such a way that cities are connected to cities, roads to roads, etcetera. Having placed a tile, the player can then decide to place one of his meeples on one of the areas on it: on the city as a knight, on the road as a robber, on a cloister as a monk, or on the grass as a farmer. When that area is complete, that meeple scores points for its owner.', :details => 'For 2 to 6 players', :price =>'42.00')

User.create(:email => 'anna.krapek@gmail.com', :password => 'haslo')

User.create(:email => 'tw.prostyadres@gmail.com', :password => 'haslo')

User.create(:email => 'wesley.gorman@gmail.com', :password => 'haslo')