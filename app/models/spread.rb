class Spread < ApplicationRecord
  belongs_to :user
  has_many :slots, as: :slottable, dependent: :destroy
end
