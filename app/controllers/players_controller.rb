class PlayersController < ApplicationController

def index
  @players = Jogadora.all
end

end
