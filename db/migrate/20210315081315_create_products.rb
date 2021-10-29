class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|

      t.string :name 
      t.string :stripe_product 
      t.string :stripe_price_id
       
      t.timestamps
    end
  end
end
