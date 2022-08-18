Rails.application.routes.draw do
  root to: 'movies#index'
  resources :movies, only: [:index]
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
