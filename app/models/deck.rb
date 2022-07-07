class Deck < ApplicationRecord
  has_and_belongs_to_many :suits
  has_many :drawers
  has_many :users, through: :drawers
end
