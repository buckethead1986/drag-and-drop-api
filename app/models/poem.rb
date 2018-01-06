class Poem < ApplicationRecord
  belongs_to :user
  has_many :poem_words
  has_many :words, through: :poem_words

  has_many :favorite_poems
  has_many :favorited_by, through: :favorite_poems, source: :user

end
