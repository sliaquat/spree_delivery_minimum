class Spree::DeliveryArea < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :delivery_city

  validates :minimum_amount, numericality: true
end
