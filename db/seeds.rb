# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts 'Seeding data...'

airlines = Airline.create([
    { 
      name: "Kenya Airways",
      image_url: "https://open-flights.s3.amazonaws.com/United-Airlines.png"
    }, 
    { 
      name: "Fly540",
      image_url: "https://open-flights.s3.amazonaws.com/Southwest-Airlines.png"
    },
    { 
      name: "Jambojet",
      image_url: "https://open-flights.s3.amazonaws.com/Delta.png" 
    }, 
    { 
      name: "Skyward Express",
      image_url: "https://open-flights.s3.amazonaws.com/Alaska-Airlines.png" 
    }, 
    { 
      name: "Safarilink",
      image_url: "https://open-flights.s3.amazonaws.com/JetBlue.png" 
    }, 
    { 
      name: "Phoenix Aviation",
      image_url: "https://open-flights.s3.amazonaws.com/American-Airlines.png" 
    }
  ])

reviews = Review.create([
        {
            title: 'Okay airline',
            description: 'The meals were tasty.',
            score: 5,
            airline: airlines.first
        },
        {
            title: 'Horrible experience',
            description: 'Questionable hygiene.',
            score: 1,
            airline: airlines.first
        }
    ]
  )



puts 'Seeding done!'