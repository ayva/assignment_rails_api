class AddTitleTextToReview < ActiveRecord::Migration
  def change
    add_column :reviews, "title", :string
    add_column :reviews, "review_text", :string
  end
end
