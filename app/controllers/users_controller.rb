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
        User.create(name: params[:name], password: params[:password]).to_json
    end
    
    post '/users/login' do
        # binding.pry
        if User.find_by(name: params[:name]) == nil #no user
            "b".to_json
        elsif User.find_by(name: params[:name]).password != params[:password] #user exists but wrong password
            "a".to_json
        elsif User.find_by(name: params[:name]).password == params[:password] #user and password match
            User.find_by(name: params[:name]).id.to_json
        end
    end

    post '/users/:id/user_game_list' do
        # binding.pry
        UserGameList.create(params[:id], params{:game_id}).to_json
    end
end