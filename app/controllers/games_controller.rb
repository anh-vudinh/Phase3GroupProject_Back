class GamesController < ApplicationController

    post '/games/pageload' do
        [Game.all, UserGameList.all.filter{|e| params[:id] == e.user_id}].to_json
    end

    post '/games/creategame' do
        x = Game.create(title: params[:title], genre: params[:genre], platform: params[:platform], image: params[:image], game_played: false) #creates new game
        
        UserGameList.create(user_id: params[:user_id], game_id: x[:id]) #adds game directly to MyGames of session ID

        x.to_json #converts to json to send back
    end

    patch '/games/:id' do
        game = Game.find(params[:id])
        game.update(params).to_json
    end

    delete '/games/:id' do
        Game.find(params[:id]).destroy
    end

end