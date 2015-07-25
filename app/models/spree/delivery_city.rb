class Spree::DeliveryCity < ActiveRecord::Base


  # validates :name, presence: true
  has_many :delivery_areas, dependent: :destroy
  accepts_nested_attributes_for :delivery_areas, :allow_destroy => true, :reject_if => lambda { |a| a[:name].blank? || a[:minimum_amount].blank? }
end
