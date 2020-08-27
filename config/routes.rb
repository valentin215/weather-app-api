Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :weathers, only: [:index]
    end
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :air_qualities, only: [:index]
    end
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :water_qualities, only: [:index]
    end
  end
end
