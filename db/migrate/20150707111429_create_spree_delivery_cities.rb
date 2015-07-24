class CreateSpreeDeliveryCities < ActiveRecord::Migration
  def change
    drop_table :delivery_cities
    drop_table :delivery_areas

    create_table :spree_delivery_cities do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
