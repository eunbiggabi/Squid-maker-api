class CardsController < ApplicationController
  before_action:find_card ,only: [:show, :update, :destroy]
  before_action:authenticate_user, except: [:index, :show]
  before_action:check_ownership, only: [:destroy, :update]

  def method_name
    
  end

  def index
    @cards = []
    if(params[:username])
      Card.find_by_user(params[:username]).each do |card|
        @cards << Card.find_by(id:card.id).transform_message
      end
    else
      Card.order('updated_at DESC').each do |card|
        @cards << Card.find_by(id:card.id).transform_message
      end
    end
    render json: @cards
  end

  def create
    @card=current_user.cards.create(card_params)
    if @card.errors.any?
      render.json:@card.errors, status: :unprocessable_entity
    else
      render json:@card, status: 200
    end
  end

  def my_messages
    @card = Card.find_by_user(current_user.username).order('updated_at DESC').each do |card|
      @cards << Card.find_by(id:card.id).transform_message
    end
    render json:@cards
  end

  def check_ownership
    if current_user.id != @card.user.id
      render json:{error: "not authorized to delete the card"}
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
    render json:@card.transform_message
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
