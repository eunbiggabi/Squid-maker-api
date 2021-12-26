# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


themes = Theme.create([
  {name: "light"}, {name: "dark"}, {name: "colorful"}
])

cards = Card.create([
  {
    id: 1,
    name: "Kyu",
    company: "Google",
    theme: themes.first,
    title: "Software developer",
    email: "kyu@email.com",
    message: "go for it"
    # fileName: "kyu",
    # fileURL: "https://i.imgur.com/LIRHSsi.jpg"
  },
  {
    id: 2,
    name: "Chloe",
    company: "Samsung",
    theme: themes.second,
    title: "Admin",
    email: "chloe@email.com",
    message: "let's go"
    # fileName: "chloe",
    # fileURL: "https://media.istockphoto.com/photos/learn-to-love-yourself-first-picture-id1291208214?b=1&k=20&m=1291208214&s=170667a&w=0&h=sAq9SonSuefj3d4WKy4KzJvUiLERXge9VgZO-oqKUOo="
  },
  {
    id: 3,
    name: "Mike",
    company: "Coles",
    theme: themes.last,
    title: "Sales",
    email: "mike@email.com",
    message: "oh no~!"
    # fileName: "mike",
    # fileURL: "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
  }
])

