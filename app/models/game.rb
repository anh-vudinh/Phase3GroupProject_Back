class Game < ActiveRecord::Base
    has_many :user_game_lists
    has_many :users, through: :user_game_lists
end