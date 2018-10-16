class CreateNeighbors < ActiveRecord::Migration[5.1]
  def change
    create_table :neighbors do |t|
      t.string :name
      t.string :location
      t.references :residential, foreign_key: true

      t.timestamps
    end
  end
end
