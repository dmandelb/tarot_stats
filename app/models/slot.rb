class Slot < ApplicationRecord
  belongs_to :card, optional: true
  belongs_to :slottable, polymorphic: true
  validate :card_cannot_be_absent_for_reading

  def card_cannot_be_absent_for_reading
    if slottable_type == "Reading" && !card
      errors.add(:name, "is not optional")
    end
  end
end
