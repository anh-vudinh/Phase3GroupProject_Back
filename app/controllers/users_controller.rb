class UsersController < ApplicationController

    get '/users' do
        User.all.to_json
        # binding.pry
    end

    patch '/users/:id' do
        # binding.pry
        user = User.find(params[:id])
        user.update(params)
        user.to_json
    end
    
    post '/users/signup' do
        User.create(name: params[:name], password: params[:password]).to_json
    end
    
    post '/users/login' do
        fart = params
    #    User.find_by(name: params[:name]).id
    # binding.pry
    end
  
  end