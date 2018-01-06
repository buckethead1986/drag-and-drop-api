class PoemWord < ApplicationRecord
  belongs_to :poem
  belongs_to :word
end
