class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    player = Player.find(params[:id])
    matches_win = Match.where(winner_id: params[:id])
    matches_lose = Match.where(loser_id: params[:id])
    win_perc = (matches_win.size.to_f / (matches_win.size.to_f + matches_lose.size.to_f))*100
    lose_perc = (matches_lose.size.to_f / (matches_win.size.to_f + matches_lose.size.to_f))*100

    matches_win_terran = (Match.where(winner_id: params[:id], winner_faction: :Terrans)).size
    matches_lose_terran = (Match.where(loser_id: params[:id], winner_faction: :Terrans)).size

    matches_win_Protoss = (Match.where(winner_id: params[:id], winner_faction: :Protoss)).size
    matches_lose_Protoss = (Match.where(loser_id: params[:id], winner_faction: :Protoss)).size

    matches_win_Zerg = (Match.where(winner_id: params[:id], winner_faction: :Zerg)).size
    matches_lose_Zerg = (Match.where(loser_id: params[:id], winner_faction: :Zerg)).size

    render json: {
      palyer: player, 
      win: matches_win, 
      lose: matches_lose, 
      win_perc: win_perc, 
      lose_perc: lose_perc,
      matches_win_terran: matches_win_terran,
      matches_lose_terran: matches_lose_terran,
      matches_win_Zerg: matches_win_Zerg,
      matches_lose_Zerg: matches_lose_Zerg,
      matches_win_Protoss: matches_win_Protoss,
      matches_lose_Protoss: matches_lose_Protoss,
    }
  

  end
end
