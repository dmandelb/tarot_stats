class User < ApplicationRecord
  has_one :drawer
  has_many :decks, through: :drawer
  has_many :spreads
  has_many :readings
end
