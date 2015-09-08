require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  def index
    @reviews = Review.all

    respond_to :html, :json
  end
end
