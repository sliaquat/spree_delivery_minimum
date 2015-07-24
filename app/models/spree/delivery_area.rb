class Spree::DeliveryArea < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :delivery_city, class_name: "Spree::DeliveryCity"

  validates :minimum_amount, numericality: true
end
