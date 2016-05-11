
ActiveRecord::Schema.define(version: 20160511095801) do

  create_table "matches", force: :cascade do |t|
    t.string   "winner_faction"
    t.string   "loser_faction"
    t.integer  "duration"
    t.datetime "date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "winner_id"
    t.integer  "loser_id"
  end
  
  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
