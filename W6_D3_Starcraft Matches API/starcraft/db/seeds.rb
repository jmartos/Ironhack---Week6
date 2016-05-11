players = Player.create([
  {name: 'John Doe'},
  {name: 'John Smith'},
  {name: 'Jane Doe'}
])

matches = Match.create([
  {winner_faction: 'Terrans', loser_faction: 'Zerg', duration: 4, date: Date.today - 1, winner_id: players[0].id, loser_id: players[1].id},
  {winner_faction: 'Protoss', loser_faction: 'Zerg', duration: 5, date: Date.today - 2, winner_id: players[1].id, loser_id: players[2].id},
  {winner_faction: 'Zerg', loser_faction: 'Protoss', duration: 3, date: Date.today - 1, winner_id: players[2].id, loser_id: players[0].id},
  {winner_faction: 'Zerg', loser_faction: 'Terrans', duration: 4, date: Date.today - 4, winner_id: players[2].id, loser_id: players[0].id},
  {winner_faction: 'Protoss', loser_faction: 'Terrans', duration: 6, date: Date.today - 1, winner_id: players[0].id, loser_id: players[1].id},
  {winner_faction: 'Terrans', loser_faction: 'Zerg', duration: 4, date: Date.today - 5, winner_id: players[1].id, loser_id: players[2].id},
  {winner_faction: 'Protoss', loser_faction: 'Terrans', duration: 8, date: Date.today - 1, winner_id: players[0].id, loser_id: players[1].id}
])