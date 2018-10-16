class CreateTypeUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :type_users do |t|
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
