class GamesController < ApplicationController
  before_action :set_game, only: %i[ show edit update destroy ]

  # GET /games
  def index
    @games = Game.order('id DESC')
  end

  # GET /games/1 
  def show
  end

  # GET /games/new
  def new
    @game = Game.new
    15.times{ @game.rates.build }
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to action: :index
  end

  # PATCH/PUT /games/1 
  def update
    if @game.user_id == current_user.id
      @game.update(update_game_params)
    end
    redirect_to action: :index
  end

  # DELETE /games/1 or /games/1.json
  def destroy
    if @game.user_id == current_user.id
      @game.destroy
    end
    redirect_to action: :index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.require(:game).permit(:home_team, :away_team, :home_score, :away_score, :date, :mom, :game_text, :rate_team, rates_attributes: [:game_id, :position, :name, :rate, :rate_text]).permit(user_id: current.user.id)
    end
    
    def update_game_params
      params.require(:game).permit(:home_team, :away_team, :home_score, :away_score, :date, :mom, :game_text, :rate_team, rates_attributes: [:game_id, :position, :name, :rate, :rate_text, :_destroy, :id]).permit(user_id: current.user.id)
    end
end
