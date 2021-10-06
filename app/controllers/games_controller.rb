class GamesController < ApplicationController

    post '/games/pageload' do
        [Game.all, UserGameList.all.filter{|e| params[:id] == e.user_id}].to_json
    end

    post '/games/create' do
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