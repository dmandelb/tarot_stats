class User < ApplicationRecord
  has_one :drawer
  has_and_belongs_to_many :decks
  has_many :spreads
  has_many :readings
end
