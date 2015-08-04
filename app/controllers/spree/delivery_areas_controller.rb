module Spree

    class DeliveryAreasController <  Spree::StoreController

      def index
        @delivery_areas = Spree::DeliveryCity.find_by(id: params["delivery_city_id"]).delivery_areas
        respond_to do |format|
          format.js { render layout: false, content_type: 'text/javascript' }
          format.html
        end
      end

      def save

        @delivery_area = Spree::DeliveryArea.find_by(id:params['delivery_area_id'])
        @delivery_city = @delivery_area.delivery_city

        cookies[:delivery_area] = JSON.generate( {id: @delivery_area.id, name: @delivery_area.name, minimum_amount: @delivery_area.minimum_amount, city_id: @delivery_city.id})

        respond_to do |format|
          format.js { render layout: false, content_type: 'text/javascript' }
          format.html
        end
      end

    end

end
