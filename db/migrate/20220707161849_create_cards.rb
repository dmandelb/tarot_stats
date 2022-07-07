class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.references :suit, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
