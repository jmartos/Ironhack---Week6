class CreateSellerReviewrails < ActiveRecord::Migration
  def change
    create_table :seller_reviewrails do |t|
      t.string :c

      t.timestamps null: false
    end
  end
end
