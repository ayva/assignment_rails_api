# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |i|
  Movie.create(:name => "Movie#{i}", :release_date => Time.now() - 6048000*i)
  Review.create(:reviewer_name => "Some Name", movie_id: i, review_date: Time.now() - 518400*i )
end
