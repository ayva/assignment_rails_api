class ReviewsController < ApplicationController
  respond_to :html, :json, :js

  def index
    @reviews = Review.all
    @movies = Movie.all
    respond_to do |format|
      format.html {}
      format.json { render :json => @reviews, :status => 201 }
    end

  end

  def create
    @review = Review.new(white_listed_params)
    @review.reviewer_name = "Olga"
    @review.review_date = Time.now

    respond_to do |format|
      if @review.save
        format.js{}
        # redirect_to reviews_path
      else
        format.js{render json: @review.errors}
      end
    end
  end


  def destroy
    @review=Review.find(params[:id])
    respond_to do |format|
      if @review.destroy()
          format.js{}
        # redirect_to reviews_path
      else
        format.js{render json: @review.errors}
      end
    end
  end

  private

  def white_listed_params
    params.require(:review).permit(:movie_id, :title, :review_text)
  end
end
