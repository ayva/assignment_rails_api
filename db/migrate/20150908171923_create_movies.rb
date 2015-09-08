class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.date "release_date"
      t.string "name"

      t.timestamps null: false
    end
  end
end
