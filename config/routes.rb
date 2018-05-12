Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :words, only: [:index, :new, :create, :show]
      resources :poems, only: [:index, :new, :create, :show, :destroy]
      resources :users, only: [:index, :new, :create, :show, :update]
      resources :poem_words, only: [:index, :new, :create, :show]
      resources :relationships, only: [:index, :new, :create, :show, :destroy]
      resources :favorited_poems, only: [:index, :new, :create, :show, :destroy]
      post "/auth", to: "sessions#create"
      get "/current_user", to: "sessions#show"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
