class GamesController < ApplicationController
       
    get '/games' do
        Game.all.to_json
    end

    post '/games' do
       Game.create(title: params[:title], genre: params[:genre], platform: params[:platform], game_played: false).to_json       
    end

    patch '/games/:id' do
        game = Game.find(params[:id])
        game.update(params).to_json
    end

    delete '/games/:id' do
        Game.find(params[:id]).destroy    
    end
  
  end