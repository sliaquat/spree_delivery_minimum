class Spree::Admin::DeliveryCitiesController < Spree::Admin::ResourceController

  def index
  end

  def new
      @delivery_city = Spree::DeliveryCity.new
  end

  def create

    @delivery_city = Spree::DeliveryCity.new(permitted_params)

    if(@delivery_city.save)
      flash[:success] = "Delivery City Created"
      redirect_to admin_delivery_cities_path
    else
      render 'new'
    end

  end



  # private
  def permitted_params
    params.require(:delivery_city).permit(:id, :name)

  end

end
