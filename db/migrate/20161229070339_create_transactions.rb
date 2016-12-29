class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.string :merchent_name
      t.boolean :debit
      t.string  :account_id
      t.references :account, index: true, foreign_key: true
      t.integer :atm_mach_id

      t.timestamps null: false
    end
  end
end
