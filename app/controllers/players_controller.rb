class PlayersController < ApplicationController

  # Actions -------------------------------
  # index/show
  def index
    @players = Player.order(created_at: :desc)
  end

  def show
    @player = Player.find(params[:id])
  end
  
  # new/create
  def new      
    @player = Player.new
  end

  def create
    new_player = Player.new(params[:player].permit(
      :firstname,
      :lastname,
      :name_suffix
    ))

    new_player.save
    redirect_to players_url
  end


  # edit/update
  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find params[:id]
    @player.update params[:player].permit(
      :firstname,
      :lastname,
      :name_suffix
    )  

    redirect_to(players_url)
  end

  # destroy
  def destroy
    player = Player.find(params[:id])
    player.destroy
    redirect_to(players_url)
  end
  # Actions ------------------------------- (end)

end
