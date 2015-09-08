class ReviewsController < ApplicationController
  respond_to :html, :json

  def index
    @reviews = Review.all
    respond_to do |format|
      format.json { render :json => @reviews, :status => 201 }
    end

  end

  def create
    @review = Review.new

  end


  def show

  end
end
