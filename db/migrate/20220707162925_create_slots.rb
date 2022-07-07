class CreateSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :slots do |t|
      t.references :card, foreign_key: true
      t.references :slottable, polymorphic: true
      t.string :name

      t.timestamps
    end
  end
end
