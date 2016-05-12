class CreateSellerReviews < ActiveRecord::Migration
  def change
    create_table :seller_reviews do |t|
      t.string :author
      t.string :review

      t.timestamps null: false
    end
  end
end
