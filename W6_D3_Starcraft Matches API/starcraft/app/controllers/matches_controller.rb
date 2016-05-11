class MatchesController < ApplicationController
  def index
    @players = Player.all
    matches = []
    @players.each do |player|
      matches.push(Match.where(winner_id: player.id))
    end
    render json: matches
  end

  def faction_matches
    matches = Match.where(winner_faction: params[:faction])
    render json: matches
  end
end
