class UsersController < ApplicationController

    get '/users' do
        User.all.to_json
    end

    patch '/users/:id' do
        # binding.pry
        user = User.find(params[:id])
        user.update(params)
        user.to_json
    end
    
    post '/users' do
        User.create(name: params[:name], password: params[:password]).to_json
    end
  
  end