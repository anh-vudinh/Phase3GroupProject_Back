puts "🌱 Seeding spices..."


10.times do
    User.create(name: Faker::Name.first_name, password: Faker::Alphanumeric.alpha(number: 5))
end

22.times do
    Game.create(title: Faker::Game.title, genre: Faker::Game.genre, platform: Faker::Game.platform, game_played: [true, false].sample)
end


UserGameList.create(user_id: 1, game_id: 1)
UserGameList.create(user_id: 2, game_id: 2)
UserGameList.create(user_id: 3, game_id: 3)
UserGameList.create(user_id: 4, game_id: 4)
UserGameList.create(user_id: 5, game_id: 5)
UserGameList.create(user_id: 6, game_id: 6)
UserGameList.create(user_id: 7, game_id: 7)
UserGameList.create(user_id: 8, game_id: 8)
UserGameList.create(user_id: 9, game_id: 9)
UserGameList.create(user_id: 10, game_id:10)
UserGameList.create(user_id: 1, game_id: 11)
UserGameList.create(user_id: 2, game_id: 12)
UserGameList.create(user_id: 3, game_id: 13)
UserGameList.create(user_id: 4, game_id: 14)
UserGameList.create(user_id: 5, game_id: 15)
UserGameList.create(user_id: 6, game_id: 16)
UserGameList.create(user_id: 7, game_id: 17)
UserGameList.create(user_id: 8, game_id: 18)
UserGameList.create(user_id: 9, game_id: 19)
UserGameList.create(user_id: 10, game_id: 20)
UserGameList.create(user_id: 1, game_id: 21)
UserGameList.create(user_id: 2, game_id: 22)

puts "✅ Done seeding!"
