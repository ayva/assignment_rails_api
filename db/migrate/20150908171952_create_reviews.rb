class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.date "review_date"
      t.integer "movie_id"
      t.string "reviewer_name"

      t.timestamps null: false
    end
  end
end
