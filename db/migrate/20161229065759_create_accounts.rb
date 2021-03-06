class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :account_number
      t.integer :account_type
      t.decimal :balance
      t.boolean :active
      t.integer :user_id
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
