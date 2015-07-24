class CreateSpreeDeliveryAreas < ActiveRecord::Migration
  def change

    create_table :spree_delivery_areas do |t|
      t.string :name, null:false, index: true
      t.decimal :minimum_amount, precision: 10, scale: 2, default: 0.0
      t.belongs_to :delivery_city, index: true

      t.timestamps null: false
    end
  end

end
