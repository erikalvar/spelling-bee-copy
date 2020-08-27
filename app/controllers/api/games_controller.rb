class Api::GamesController < ApplicationController

  def index
    @games = Game.all
    render "index.json.jb"
  end

  def create
    @game = Game.new(
      date: params[:date],
      letters: params[:letters],
      key_letter: params[:key_letter],
      words: params[:words],
    )
    if @game.save
      render "show.json.jb"
    else  
      render json: {errors: @game.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show 
    @game = Game.find_by(id: params[:id])
    if @game
      render "show.json.jb"
    else 
      render json: {errors: "Game does not exist."}, status: :unprocessable_entity
    end
  end

  def update
    @game = Game.find_by(id: params[:id])
    @game.date = params[:date] || @game.date
    @game.letters = params[:letters] || @game.letters
    @game.key_letter = params[:key_letter] || @game.key_letter
    @game.words = params[:words] || @game.words
  end

  def destroy
    @game = Game.find_by(id: params[:id])
    @game.destroy
    render json: {message: "Game successfully destroyed"}
  end

end
