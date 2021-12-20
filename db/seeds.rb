# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# themes = ["light", "dark", "colorful"]

# if Theme.count == 0
#     themes.each do |theme|
#         Theme.create(name: theme)
#         puts "Created #{theme} theme"
#     end
# end

if Card.count == 0
  Card.create(name:"Kyu", company:"Google", title:"Software Engineer", email:"kyu@email.com", message:"go for it")
  Card.create(name:"Bong", company:"Amazon", title:"Admin", email:"bong@email.com", message:"let's go")
end