module Spree
  module Admin
    class MinimumDeliveryLimitSettingsController < ResourceController

      def update
        settings = Spree::MinimumDeliveryLimitSetting.new
        preferences = params && params.key?(:preferences) ? params.delete(:preferences) : params
        preferences.each do |name, value|
          next unless settings.has_preference? name
          settings[name] = value
        end
        flash[:success] = Spree.t(:successfully_updated, resource: "Enforce minimum delivery amount")
        redirect_to admin_delivery_cities_path
      end
    end
  end
end


