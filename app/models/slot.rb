class Slot < ApplicationRecord
  belongs_to :card
  belongs_to :slottable, polymorphic: true
end
