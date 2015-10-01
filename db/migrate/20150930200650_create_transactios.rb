class CreateTransactios < ActiveRecord::Migration
  def change
    create_table :transactios do |t|
      t.string :name
      t.decimal :amount, scale 2
      t.timestamps null: false
    end
  end
end
