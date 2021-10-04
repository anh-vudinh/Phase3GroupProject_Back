class GameController < ApplicationController
       
    get '/games' do
        Game.all.to_json
    end
  
  end