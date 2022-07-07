class Slot < ApplicationRecord
  belongs_to :card, optional: true
  belongs_to :slottable, polymorphic: true
end
