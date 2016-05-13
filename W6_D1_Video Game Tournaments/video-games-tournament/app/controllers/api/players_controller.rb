class Api::PlayersController < ApplicationController
  skip_before_action :verify_authenticity_token

  before_action :tournament_exists
  before_action :player_exists, only: [:show, :destroy, :complete]
  
  def index
    players = Player.all
    render json: @players
  end

  def add_player
    tournament = Tournament.find_by(id: params[:tournament_id])
    player = Player.find_by(id: params[:id])
    tournament.players.push(player)
    render json: tournament
  end

  def create
    player = @tournament.players.create(player_params)
    render json: player, status: 201
  end

  def show
    render json: @player
  end

  def destroy
    @player.destroy
    render json: @player
  end

  def complete
    @player.complete
    render json: @player
  end

  private

  def task_params
    params.require(:player).permit(:name, :due_date, :tournament_id)
  end

  def tournament_exists
    @tournament = Tournament.find_by(id: params[:tournament_id])
    unless @tournament
      render json: { error: "@tournament not found"}, status: 400
    return
    end
  end

  def player_exists
    @player = @tournament.players.find_by(id: params[:id])
    unless @player
      render json: { error: "@player not found"}, status: 400
    return
    end
  end
end
