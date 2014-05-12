class PlayersController < ApplicationController

  # Actions -------------------------------
  # index/show
  def index
    @players = Player.order(:lastname, :firstname, :name_suffix)
  end

  def show
    @player = Player.find(params[:id])
  end
  
  # new/create
  def new      
    @player = Player.new
  end

  def create
    new_player = Player.new player_params

    new_player.save
    redirect_to players_url
  end


  # edit/update
  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find params[:id]
    @player.update player_params

    redirect_to(players_url)
  end

  # destroy
  def destroy
    player = Player.find(params[:id])
    player.destroy
    redirect_to(players_url)
  end
  # Actions ------------------------------- (end)


  # Private members ---------------
  private

  def player_params
    params.require(:player).permit(
      :firstname,
      :lastname,
      :name_suffix
    )
  end


end
