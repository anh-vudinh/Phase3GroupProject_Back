User.destroy_all
Game.destroy_all
UserGameList.destroy_all

puts "🌱 Seeding spices..."

10.times do
    User.create(name: Faker::Name.first_name, password: Faker::Alphanumeric.alpha(number: 5))
end

titles = ["STARCRAFT", "Commandos: Beyond the Call of Duty", "CIVILIZATION V", "DEUS EX", "DAY OF THE TENTACLE", "PORTAL", "POKEMON WHITE", "HALO: REACH", "ANIMAL CROSSING", "POKEMON SILVER", "POKEMON BLUE", "BRUTAL LEGEND", "METROID PRIME", "SUPER MARIO WORLD", "HALO 5: GUARDIANS", "CALL OF DUTY: MODERN WARFARE 2", "LEFT 4 DEAD 2", "KINGDOM HEARTS I", "POKEMON ULTRA SUN", "BACK 4 BLOOD"]

images = ["https://bnetcmsus-a.akamaihd.net/cms/blog_header/2g/2G4VZH5TIWJF1602720144046.jpg", "https://s1.gaming-cdn.com/images/products/8784/271x377/game-steam-commandos-beyond-the-call-of-duty-cover.jpg", "https://upload.wikimedia.org/wikipedia/en/5/5c/CIVILIZATION-V-FRONT-OF-BOX.jpg", "https://en.wikipedia.org/wiki/Deus_Ex_(video_game)#/media/File:Dxcover.jpg", "https://upload.wikimedia.org/wikipedia/en/7/79/Day_of_the_Tentacle_artwork.jpg", "https://steamcdn-a.akamaihd.net/steam/apps/400/library_600x900_2x.jpg", "https://cdn2.bulbagarden.net/upload/5/5f/WhiteTitle.png", "https://cdn.dlcompare.com/game_tetiere/upload/gameimage/file/8424.jpeg", "https://m.media-amazon.com/images/I/81qKst2CMOL._SL1500_.jpg", "https://lisanilssonart.com/wp-content/uploads/2020/08/9255d7696e59ef3dc46e3ac613705f25.jpg", "https://cdn02.nintendo-europe.com/media/images/05_packshots/games_13/game_boy_1/PS_GB_PokemonBlue_enGB.jpg", "https://cdn.cloudflare.steamstatic.com/steam/apps/225260/library_600x900_2x.jpg", "https://upload.wikimedia.org/wikipedia/en/b/ba/MetroidPrimebox.jpg", "https://cdn02.nintendo-europe.com/media/images/11_square_images/games_18/super_nintendo_4/SQ_SNES_SuperMarioWorld.jpg", "https://www.trustedreviews.com/wp-content/uploads/sites/54/2014/10/Halo-5-Guardians-1.jpg", "https://upload.wikimedia.org/wikipedia/en/d/db/Modern_Warfare_2_cover.PNG", "https://steamcdn-a.akamaihd.net/steam/apps/550/library_600x900_2x.jpg", "https://m.media-amazon.com/images/I/918AUL+i-DL._SL1500_.jpg", "https://assets1.ignimgs.com/2019/05/17/pokemon-ultrasun---button-1558057647977.jpg?width=300", "https://cdn.akamai.steamstatic.com/steam/apps/924970/header.jpg?t=1633024164"]

titles.each_with_index do |title, index|
    Game.create(title: title, image: images[index], genre:["Shooters", "Role-Playing", "Action-Adventure", "Survival and Horror", "Platformer"].sample, platform: ["Console", "PC", "Mac", "Mobile", "VR"].sample, game_played: [true, false].sample)
end

25.times do
    UserGameList.create(user_id: rand(1..5), game_id: rand(1..20))
end

puts "✅ Done seeding!"
