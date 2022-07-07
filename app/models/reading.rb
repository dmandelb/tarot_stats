class Reading < ApplicationRecord
  belongs_to :spread
  belongs_to :user
  has_many :slots, as: :slottable
end
