class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :stripe_customer_id
      t.references :user, null: false, foreign_key: true
      t.integer    :total_price
      t.timestamps
    end
  end
end
