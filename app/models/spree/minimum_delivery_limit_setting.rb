module Spree
  class MinimumDeliveryLimitSetting < Preferences::Configuration

    preference :enabled, :boolean, default: false

  end
end
