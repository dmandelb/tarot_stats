class CreateDecksSuits < ActiveRecord::Migration[7.0]
  def change
    create_table :decks_suits do |t|
      t.references :deck, null: false, foreign_key: true
      t.references :suit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
