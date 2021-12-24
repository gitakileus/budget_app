class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :name
      t.float :amount
      t.references :user, null: false, foreign_key: true, index: true
      t.references :group, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
