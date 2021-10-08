class UsersController < ApplicationController

    get '/users' do
        User.all.to_json
    end

    patch '/users/:id' do
        user = User.find(params[:id])
        user.update(params)
        user.to_json
    end
    
    post '/users/signup' do
        if User.find_by(name: params[:name]) == nil
            User.create(name: params[:name], password: params[:password]).to_json 
        else 
            "c".to_json
        end
    end
    
    post '/users/login' do
        if User.find_by(name: params[:name]) == nil #no user
            "b".to_json
        elsif User.find_by(name: params[:name]).password != params[:password] #user exists but wrong password
            "a".to_json
        elsif User.find_by(name: params[:name]).password == params[:password] #user and password match
            User.find_by(name: params[:name]).id.to_json
        end
    end

    post '/users/:id/user_game_list' do
        UserGameList.create(user_id: params[:id], game_id: params[:game_id]).to_json
    end

    delete '/users/:id/user_game_list/:ugl_id' do
        User.find_by(id: params[:id]).user_game_lists.find_by(id: params[:ugl_id]).destroy
    end

    get '/users/:id' do
        User.find_by(id: params[:id]).games.to_json
    end
end