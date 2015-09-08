class MoviesController < ApplicationController
    

  def index
    @movies = Movie.all
    respond_to do |format|

      # If you don't pass anything to render
      format.html  # don't do anything different here

      format.json { render :json => @movies, :status => 201 }
    end

  end

  def create
    @movie = Movie.new

  end


  def show

  end
end