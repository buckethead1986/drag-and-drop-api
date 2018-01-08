class Poem < ApplicationRecord
  belongs_to :user
  has_many :poem_words
  has_many :words, through: :poem_words

  has_many :favorited_poems
  has_many :favorited_by, through: :favorited_poems, source: :user

end
