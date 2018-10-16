class CreateHistoricals < ActiveRecord::Migration[5.1]
  def change
    create_table :historicals do |t|
      t.string :id_user
      t.float :collection
      t.date :month
      t.float :administration_value
      t.float :discount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
