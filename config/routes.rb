Spree::Core::Engine.routes.draw do
  # Add your extension routes here

  namespace :admin do
    resources :delivery_cities do
      resources :delivery_areas
    end

    resources :delivery_areas
    resource :minimum_delivery_limit_settings, only: [:edit, :update]
  end

  resources :delivery_areas, only: :index do
    get 'save'
  end

end
