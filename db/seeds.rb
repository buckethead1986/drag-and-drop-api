# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_one = User.create(username: 'Robert', password: 'test', image: 'http://www.dltk-kids.com/puzzles/jigsaw/2013/puzzle-images/1222.jpg')
user_two = User.create(username: 'Sarah', password: 'test', image: 'http://www.dltk-kids.com/puzzles/jigsaw/2013/puzzle-images/1222.jpg')
user_three = User.create(username: 'Alex', password: 'test', image: 'http://www.dltk-kids.com/puzzles/jigsaw/2013/puzzle-images/1222.jpg')

user_three.following << user_one

words = ["there", "are", "things", "a", "single", "none", "won't", "he", "she", "will", "inside", "snowing", "fire", "people", "backward", "maybe", "a", "the", "sea", "tree", "is", "mostly"
]

Poem.create(user_id: 1, content: "10/will/37.5/170")
# word_one = Word.create( title: "there")
# word_two = Word.create( title: "are")
# word_three = Word.create( title: "things")
# content2 = [word_one.title, word_two.title, word_three.title]
#javascript, create state of array of word objects, join string of Word.word as content for poem, push Word objects onto poem for api poem.words data
# content2.forEach(word => poem_one.words << word)
# content = word_one.word + " " + word_two.word + " " + word_three.word


#
# poem_one = Poem.create(user_id: 1, content: Word.all[0].title + " " + Word.all[1].title + " " + Word.all[2].title)
# poem_one.words << [word_one, word_two, word_three]
# poem_two = Poem.create(user_id: 2, content: Word.all[2].title + " " + Word.all[0].title + " " + Word.all[1].title)
# poem_two.words << [word_three, word_one, word_two]
#
# poem_three = Poem.create(user_id: 1, content: "What is this?")


# user_one.favorite_poems << poem_two
# user_three.favorite_poems << [poem_two, poem_three]
# user_one.following << user_three
# user_two.following << user_three
# user_two.following << user_two

words.each do |word|
  Word.create(title: word, group: 1)
end
