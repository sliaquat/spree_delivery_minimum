class CreateSpreeDeliveryCities < ActiveRecord::Migration
  def change

    create_table :spree_delivery_cities do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
