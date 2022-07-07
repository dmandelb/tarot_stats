class CreateSuits < ActiveRecord::Migration[7.0]
  def change
    create_table :suits do |t|
      t.string :name

      t.timestamps
    end
  end
end
