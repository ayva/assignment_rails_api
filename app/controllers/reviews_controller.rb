class ReviewsController < ApplicationController
  respond_to :html, :json

  def index
    @reviews = Review.all

  end

  def create
    @review = Review.new

  end


  def show

  end
end
