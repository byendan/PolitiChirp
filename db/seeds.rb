# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pundits = ["BernieSanders", "HillaryClinton", "realDonaldTrump", "JebBush", "RealBenCarson", "ChrisChristie", 
            "tedcruz", "CarlyFiorina", "gov_gilmore", "GovMikeHuckabee", "JohnKasich",
            "RandPaul", "marcorubio", "RickSantorum"]

pundits.each {|p| Polititian.create(twitter_handle: p)}

