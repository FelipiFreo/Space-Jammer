class PlayersController < ApplicationController

def index
  @players = Jogadora.all
end

def show
  @player = Jogadora.find(params[:id])
end

end
