Rails.application.routes.draw do

  root to: "restaurants#index"
  # nester les reviews liées ar restau dans l'url du restau => /restaurants/id_restaurant/review
  resources :restaurants do
      resources :reviews, only: [:new, :create, :index, :show]
    end

  # je crée aussi la possibilité de jouer sur les reviews en faisant /reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
