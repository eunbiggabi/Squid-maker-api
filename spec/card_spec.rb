require 'spec_helper'
require_relative '../app/models/card.rb'

RSpec.describe Card do
  current_user = User.first_or_create!(email: 'kyu@example.com', password: '123', password_confirmation: '123')

  it 'has a name' do
    card = Card.new(
      name: '',
      company: 'Google',
      theme_id: 1,
      title: "Software developer",
      email: "kyu@email.com",
      message: "go for it", 
      user: current_user,
    )

    expect(card).to_not be_valid

    card.name = 'kyu'
    expect(card).to be_valid
  end

  it 'has a email without "@" symbol' do
    card = Card.new(
      name: 'kyu',
      company: 'Google',
      theme_id: 1,
      title: "Software developer",
      email: "kyuemail.com",
      message: "go for it", 
      user: current_user,
    )
    expect(card).to_not be_valid

    card.body = 'kyu@email.com'
    expect(card).to be_valid
  end

  it 'has a title at least 2 characters long' do
    card = Card.new(
      name: '1',
      company: 'Google',
      theme_id: 1,
      title: "Software developer",
      email: "kyuemail.com",
      message: "go for it", 
      user: current_user,
    )
    expect(card).to_not be_valid

    card.title = '12'
    expect(card).to be_valid
  end
end