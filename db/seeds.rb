# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
themes = Theme.create([
  {
    name: 'light',
  },
  {
    name: 'dark',
  },
  {
    name: 'colorful',
  }
])

cards = Card.create([
  {
    name: "Kyu",
    company: "Google",
    title: "Software developer",
    email: "kyu@email.com",
    text: "go for it"
    themes: themes.first
  },
  {
    name: "Bong",
    company: "Samsung",
    title: "Admin",
    email: "bong@email.com",
    text: "let's go"
    themes: themes.second
  }
])