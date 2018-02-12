# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


users = ["Robert", "Karen"]

users.each do |user|
  User.create(username: user, password: 'test', image: 'http://www.dltk-kids.com/puzzles/jigsaw/2013/puzzle-images/1222.jpg')
end

User.all[0].following << User.all[1]


# word magnet lists

simple = ["there", "are", "the", "things", "a", "single", "fall", "and", "none", "won't", "he", "forward", "she", "will", "inside", "snowing", "fire", "people", "backward", "maybe", "a", "the", "sea", "tree", "is", "mostly", "and"
]
space = ["up", "space", "the", "galaxy", "cosmos", "asteroid", "a", "shuttle", "flew", "behind", "and", "the", "station", "a", "rocket", "fiery", "moon", "and", "beyond", "infinite", "sun", "star", "planet", "comet"]
nature = ["sit", "tree", "and", "the", "sounds", "brook", "is", "natural", "pig", "listen", "beetle", "there", "down", "inside", "outside", "grass", "bugs", "the", "spider", "stream", "a", "bird", "can"]
food = ["the", "breakfast", "orange", "gummy", "is", "bear", "worm", "at", "the", "table", "chow", "eat", "for", "sour", "sweet", "dinner", "a", "but", "lunch", "bagel"]

Poem.create(user_id: 1, content: "55/natural/55/48|58/beetle/135/84|54/sounds/246/74")

simple.each do |word|
  Word.create(title: word, group: 1, category: "Simple")
end

space.each do |word|
  Word.create(title: word, group: 2, category: "Space")
end

nature.each do |word|
  Word.create(title: word, group: 3, category: "Nature")
end

food.each do |word|
  Word.create(title: word, group: 4, category: "Food")
end
