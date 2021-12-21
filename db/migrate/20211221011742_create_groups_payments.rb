class CreateGroupsPayments < ActiveRecord::Migration[6.1]
  def change
    create_table :groups_payments do |t|
      t.references :group, null: false, foreign_key: true, index: true
      t.references :payment, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
