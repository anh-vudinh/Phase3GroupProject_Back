class User < ActiveRecord::Base
    has_many :user_game_lists
    has_many :games, through: :user_game_lists
end