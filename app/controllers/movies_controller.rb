class MoviesController < ApplicationController


  def index
    @movies = Movie.all
    respond_to do |format|
      format.html {}
      format.json { render :json => @movies, :status => 201 }
    end

  end

  def create
    @movie = Movie.new(white_listed_params)
  
    respond_to do |format|
      if @movie.save

        format.js {}
      else
        puts "Was not saved"
      end
    end

  end

  def show
    @movie = Movie.find(params[:id])

    respond_to do |format|
      format.json { render :json => @movie, :status => 201 }
    end
  end

  private

  def white_listed_params
    params.require(:movie).permit(:name, :"release_date(1i)", :"release_date(2i)", :"release_date(3i)")
  end
end