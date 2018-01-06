Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :words, only: [:index, :new, :create, :show]
      resources :poems, only: [:index, :new, :create, :show]
      resources :users, only: [:index, :new, :create, :show]
      resources :poem_words, only: [:index, :new, :create, :show]
      resources :relationships, only: [:index, :new, :create, :show]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
