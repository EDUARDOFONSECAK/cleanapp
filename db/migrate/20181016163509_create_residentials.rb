class CreateResidentials < ActiveRecord::Migration[5.1]
  def change
    create_table :residentials do |t|
      t.string :name
      t.string :address
      t.string :name_bank
      t.float :bank_account

      t.timestamps
    end
  end
end
