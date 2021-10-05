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
        if User.find_by(name: params[:name].password.to_json == params[:password].to_json)
            User.find_by(name: params[:name]).id.to_json 
        else 
            # 0.to_json
        end
    end

end