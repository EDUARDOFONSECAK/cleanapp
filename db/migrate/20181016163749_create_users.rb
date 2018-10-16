class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :type
      t.string :department
      t.integer :points
      t.references :residential, foreign_key: true

      t.timestamps
    end
  end
end
