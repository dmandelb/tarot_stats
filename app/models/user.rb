class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :drawer
  has_and_belongs_to_many :decks
  has_many :spreads
  has_many :readings

  after_create :add_standard_deck

  def add_standard_deck
    decks << Deck.first
  end
end
