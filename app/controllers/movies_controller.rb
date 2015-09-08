class MoviesController < ApplicationController


  def index
    @movies = Movie.all
    respond_to do |format|
      format.json { render :json => @movies, :status => 201 }
    end

  end

  def create
    @movie = Movie.new
  end

  def test

  end


  def show

  end
end