class Spree::Admin::DeliveryCitiesController < Spree::Admin::ResourceController

  def index
  end

  def new
      @delivery_city = Spree::DeliveryCity.new
      @delivery_city.delivery_areas.build()
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

  def update
    @delivery_city = Spree::DeliveryCity.find(params[:id])

    if(@delivery_city.update_attributes(permitted_params))
      flash[:success] = "Delivery City Updated"
      redirect_to admin_delivery_cities_path
    else
      render 'edit'
    end

  end



  # private
  def permitted_params
    params.require(:delivery_city).permit(:id, :name, :delivery_areas_attributes => [:id, :name, :minimum_amount, :_destroy])
  end

end
