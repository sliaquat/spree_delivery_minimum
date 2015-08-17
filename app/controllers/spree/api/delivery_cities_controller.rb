module Spree
  module Api
    class DeliveryCitiesController < Spree::Api::BaseController


      def index
        @delivery_cities = Spree::DeliveryCity.all
        respond_with(@delivery_cities)
      end


    end
  end
end
