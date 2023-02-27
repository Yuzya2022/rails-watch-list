Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "lists#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists do
    # * Nested routes with relation to reviews -> /restaurants/:restaurants_id/new
    resources :bookmarks, only: %i[index new show create]
  end

  resources :bookmarks, only: :destroy
end
