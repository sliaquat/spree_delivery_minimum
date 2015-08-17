object @delivery_city
attributes :id, :name

child :delivery_areas => :delivery_areas do
  attributes :id, :name, :minimum_amount
end
