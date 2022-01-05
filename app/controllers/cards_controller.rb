class CardsController < ApplicationController
  before_action:find_card ,only: [:show, :update, :destroy]

  def index
    # @cards = Card.all
    @cards = Card.order('updated_at DESC')
    render json: @cards
  end

  # def new
  #   @card = Card.new
  # end

  def create
    @card = Card.create(card_params)
    if @card.errors.any?
      render.json:@card.errors, status: :unprocessable_entity
    else
      render json:@card, status: 200
    end
  end

  def update
    @card.update(card_params)
    if @card.errors.any?
      render.json:@card.errors, status: :unprocessable_entity
    else
      render json:@card, status: 200
    end
  end

  def show
    render json:@card
  end

  def destroy
    @card.delete
    render json:{message:"message deleted!"}, status: 204
  end

  def find_card
    begin
    @card = Card.find(params[:id])
    rescue
      render json:{error: "message not found"}, status: 404
    end
  end

  private
  def card_params
    params.require(:card).permit(:name, :company, :title, :email, :message, :theme_id, :picture)
  end
end
