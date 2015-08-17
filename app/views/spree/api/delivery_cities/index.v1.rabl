object false
child(@delivery_cities => :delivery_cities) { extends "spree/api/delivery_cities/show" }
node(:minimum_delivery_limit_enabled) { Spree::MinimumDeliveryLimitSetting.new[:enabled] }