class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|

      t.string :stripe_price 
      t.string :stripe_key 
      
      t.timestamps
    end
  end
end
