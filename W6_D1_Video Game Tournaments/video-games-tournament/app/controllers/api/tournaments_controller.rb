class Api::TournamentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :tournament_exists, only: [:show, :update, :destroy]
  def index
    #tournaments = Tournament.all
    render(:index)
  end

  def create
    tournament = Tournament.create(tournament_params)
    render json: tournament
  end

  def show
    render json: @tournament
  end

   def update
    @tournament.update(tournament_params)
    render json: @tournament
  end

  def destroy
    @tournament.destroy
    render json: @tournament
  end


  private

  def tournament_params
    params.require(:tournament)
      .permit(:name)
  end

  def tournament_exists
    @tournament = Tournament.find_by(id: params[:id])
    unless @tournament
      render json: { error: "@tournament not found"}, status: 400
    return
    end
  end
end
