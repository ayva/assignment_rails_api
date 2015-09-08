class MoviesController < ApplicationController
    respond_to :html, :json

  def index
    @movies = Movie.all

  end

  def create
    @movie = Movie.new

  end


  def show

  end
end