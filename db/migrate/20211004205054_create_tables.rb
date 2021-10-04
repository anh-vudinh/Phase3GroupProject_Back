class CreateTables < ActiveRecord::Migration[6.1]
  
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
    end

    create_table :games do |t|
      t.string :title
      t.string :genre
      t.string :platform
      t.boolean :game_played
    end

    create_table :user_game_lists do |t|
       t.belongs_to :user
       t.belongs_to :game
    end
  end

end
