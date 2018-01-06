class Word < ApplicationRecord
  has_many :poems_words
  has_many :poems, through: :poem_words
end
