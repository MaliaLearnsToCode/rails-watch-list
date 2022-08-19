Rails.application.routes.draw do
  resources :lists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
# resources :restaurants, only: [:index, :new, :show, :create]

#   resources :restaurants do
#     resources :reviews, only: [:new, :create]
#   end
