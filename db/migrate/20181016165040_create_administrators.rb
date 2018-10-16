class CreateAdministrators < ActiveRecord::Migration[5.1]
  def change
    create_table :administrators do |t|
      t.string :name
      t.string :lastname
      t.date :admission
      t.date :departure
      t.references :residential, foreign_key: true

      t.timestamps
    end
  end
end
