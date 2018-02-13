# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).



robert = User.create(username: "Robert", password: 'test', image: 'http://www.divebuddy.com/members/photos/pic_1_69507.jpg')
karen = User.create(username: "Karen", password: 'test', image: 'https://whydyoueatthat.files.wordpress.com/2012/12/30-cute-puppies-you-will-want-to-take-home-with-you-28.jpg')
mike = User.create(username: "Mike", password: 'test', image: 'https://i2.wp.com/www.homeandheavens.com/wp-content/uploads/2014/09/Adorable-wrinkly-puppy-pictures_3.jpg?resize=500%2C369')
stacy = User.create(username: "Stacy", password: 'test', image: 'https://metrouk2.files.wordpress.com/2017/03/512366437.jpg?w=748&h=498&crop=1')


stacy.following << robert


# word magnet lists

simple = ["there", "are", "phone", "as", "see", "the", "call", "ing", "like", "hide", "man", "bike", "know", "was", "ly", "woman", "things", "hear", "cut", "at", "a", "from", "over", "is", "single", "fall", "ed", "speak", "swim", "once", "run", "and", "none", "hike", "won't", "he", "ly", "make", "under", "dream", "at", "forward", "trail", "do", "she", "away", "will", "inside", "throw", "determine", "ing", "brief", "toward", "s", "snowing", "fire", "people", "ed", "backward", "maybe", "a", "the", "sea", "s", "she", "tree", "from", "is", "a", "mostly", "he", "and"
]
space = ["up", "space", "sol", "science", "as", "alien", "system", "orbit", "the", "ed", "complex", "galaxy", "iss", "stellar", "majesty", "the", "dark", "theory", "at", "gaseous", "nebula", "sun", "mercury", "venus", "earth", "mars", "asteroid", "belt", "jupiter", "saturn", "uranus", "neptune", "pluto", "is", "a", "gravity", "planet", "black", "hole", "ing", "centuari", "cosmos", "beautiful", "asteroid", "a", "shuttle", "flew", "countdown", "behind", "s", "proxima", "burn", "and", "flight", "ed", "launch", "ignition", "the", "station", "ing", "a", "constellation", "rocket", "fiery", "moon", "and", "s", "beyond", "infinite", "star", "planet", "comet"]
nature = ["sit", "tree", "fly", "back", "butterfly", "like", "front", "yard", "apple", "weather", "see", "bike", "and", "the", "elephant", "are", "sounds", "late", "ing", "was", "brook", "little", "is", "nice", "natural", "house", "bird", "and", "tiger", "ant", "by", "pig", "listen", "banana", "rain", "down", "twas", "brillig", "and", "the", "cute", "at", "s", "ride", "ing", "beetle", "bad", "there", "said", "down", "cloud", "book", "make", "creek", "once", "ed", "lie", "inside", "at", "read", "outside", "talk", "dizzy", "grass", "bugs", "the", "s", "hear", "early", "spider", "swim", "the", "eager", "as", "stream", "a", "bird", "can", "sun"]
food = ["the", "breakfast", "meat", "at", "drool", "recipe", "as", "orange", "bitter", "finger", "dizzy", "dull", "cereal", "gummy", "let", "ing", "ed", "them", "beef", "are", "eat", "cake", "ly", "ate", "marshmallow", "awful", "clear", "vegetable", "s", "bacon", "donut", "is", "ing", "bear", "lettuce", "sizzle", "fry", "worm", "tomato", "at", "the", "table", "chow", "egg", "eat", "for", "throw", "happy", "sour", "he", "she", "sweet", "make", "dinner", "a", "but", "lunch", "bagel"]
music = ["violin", "viola", "cello", "s", "night", "bass", "major", "drum", "is", "guitar", "late", "key", "minor", "harp", "is", "are", "piano", "we", "ing", "discordant", "chord", "early", "trumpet", "tuba", "clarinet", "ukelele", "they", "melody", "saxophone", "beautiful", "terrible", "key", "flute", "the", "accordion", "ly", "oboe", "harmonica", "or", "sing", "trombone", "banjo", "ocarina", "of", "time", "ed", "electric", "acoustic", "ed", "s", "quartet", "was", "string", "keep", "sang", "ing", "sad", "happy", "orchestra", "song", "band", "bach", "mozart", "dance", "voice", "play", "concert", "clef", "treble", "bass", "double", "were", ]
science = ["science", "make", "class", "and", "biology", "fire", "chemistry", "temperature", "fahrenheight", "celsius", "kelvin", "physics", "is", "geology", "wrong", "significant", "figure", "paleontology", "ed", "dinosaur", "s", "test", "right", "archaeology", "break", "work", "experiment", "doesn't", "my", "can", "are", "can't", "micro", "bill", "nye", "the", "science", "guy", "our", "does", "boil", "to", "run", "cell", "s", "and", "neuron", "volcano", "s", "bio", "lab", "study", "data", "research", "reagent", "result", "publish", "study"]

Poem.create(user_id: 1, content: "70/spider/117/83|60/pig/184/83|58/is/233/82|64/down/268/82|65/inside/136/150|69/the/207/150|53/tree/253/151")

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

music.each do |word|
  Word.create(title: word, group: 5, category: "Music")
end
