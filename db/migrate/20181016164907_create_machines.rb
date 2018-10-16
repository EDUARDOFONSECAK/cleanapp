class CreateMachines < ActiveRecord::Migration[5.1]
  def change
    create_table :machines do |t|
      t.float :accumulated
      t.integer :inserted
      t.string :id_user
      t.date :month
      t.references :historical, foreign_key: true

      t.timestamps
    end
  end
end
