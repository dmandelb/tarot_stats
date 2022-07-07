class CreateDecksUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :decks_users do |t|
      t.references :deck, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
