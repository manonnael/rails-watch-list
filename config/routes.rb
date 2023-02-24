Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "lists#index"
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:create]
  end
  resources :bookmarks, only: [:destroy]
end
