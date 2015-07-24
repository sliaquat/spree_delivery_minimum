class Spree::DeliveryCity < ActiveRecord::Base
  validates :name, presence: true
  has_many :delivery_areas, dependent: :destroy
end
