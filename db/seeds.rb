require "open-uri"
file_1 = URI.open("https://images.unsplash.com/photo-1563754256268-5be2c4750764?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGF2ZW50dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
file_2 = URI.open("https://images.unsplash.com/photo-1485846234645-a62644f84728?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YWN0aW9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
file_3 = URI.open("https://images.unsplash.com/photo-1474552226712-ac0f0961a954?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cm9tYW5jZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60")
file_4 = URI.open("https://images.unsplash.com/photo-1516410529446-2c777cb7366d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aG9ycm9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
file_5 = URI.open("https://images.unsplash.com/photo-1665686377065-08ba896d16fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bGF1Z2h8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60")

Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

wonder_woman = Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
shawshank = Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
titanic = Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
ocean_eight = Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

action = List.new(name: "Action")
action.photo.attach(io: file_1, filename: "action.png", content_type: "image/png")
action.save
aventure = List.new(name: "Aventure")
aventure.photo.attach(io: file_2, filename: "aventure.png", content_type: "image/png")
aventure.save
romance = List.new(name: "Romance")
romance.photo.attach(io: file_3, filename: "romance.png", content_type: "image/png")
romance.save
horreur = List.new(name: "Horreur")
horreur.photo.attach(io: file_4, filename: "horreur.png", content_type: "image/png")
horreur.save
comedie = List.new(name: "Comédie")
comedie.photo.attach(io: file_5, filename: "comedie.png", content_type: "image/png")
comedie.save

Bookmark.create(comment: "First test", movie: wonder_woman, list: action)
Bookmark.create(comment: "Second test", movie: shawshank, list: horreur)
Bookmark.create(comment: "Third test", movie: titanic, list: romance)
Bookmark.create(comment: "Fourth test", movie: ocean_eight, list: aventure)
