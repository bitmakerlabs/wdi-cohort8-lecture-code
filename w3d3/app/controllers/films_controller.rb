class FilmsController < ApplicationController
  def new
    @film = Film.new
    @bttf = Film.first
  end

  def show
    # This duplication can be DRY'd up. Can you figure out how?
    @film = Film.find(params[:id])
  end

  def edit
    # This duplication can be DRY'd up. Can you figure out how?
    @film = Film.find(params[:id])
  end

  def update
    # This duplication can be DRY'd up. Can you figure out how?
    @film = Film.find(params[:id])
  end

  def create
    @film = Film.new(film_params)
    @film.save
    render :text => @film
  end

  private
  def film_params
    params.require(:film).permit(:title, :director, :year, :synopsis)
  end
end
