class CardsController < ApplicationController

  def index
    @cards = Card.all
    render json: @cards
  end

  def create
    @card = Card.create({name: "Sammi", company: "Apple", title: "Accountant", email: "sammi@email.com", message: "I do not want to go work"})
  end
end