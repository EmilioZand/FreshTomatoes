class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    if params[:search]
      @movies = Movie.search(params[:search])
    elsif params[:genre]
      @movies = Movie.where(genre: params[:genre])
    elsif params[:new_release]
      @movies = Movie.new_releases
    else
      @movies = Movie.all
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end
   
  def create
    @movie = Movie.new(movie_params)
   
    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end
  end
   
  private

  def movie_params
    params.require(:movie).permit(:title, :description, :rating, :image_url)
  end
end