class Card < ApplicationRecord
  belongs_to :suit

  def full_name
    "#{name} (#{suit.name})"
  end
end
