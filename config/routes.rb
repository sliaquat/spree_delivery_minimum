Spree::Core::Engine.routes.draw do
  # Add your extension routes here

  namespace :admin do
    resources :delivery_cities, only: [:index, :destroy, :edit, :update, :new, :create] do

    end

  end

end
