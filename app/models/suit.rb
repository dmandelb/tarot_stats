class Suit < ApplicationRecord
  has_many :cards
  has_and_belongs_to_many :decks
end
