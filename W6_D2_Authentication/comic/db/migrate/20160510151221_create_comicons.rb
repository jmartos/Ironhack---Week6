class CreateComicons < ActiveRecord::Migration
  def change
    create_table :comicons do |t|
      t.string :title
      t.string :publisher

      t.timestamps null: false
    end
  end
end
