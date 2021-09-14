Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :entries, only: [:index]
        resources :favorites, only: [:index, :create, :destroy]
        get '/reload', to: 'favorites#destroy_all_on_load'
      end
    end
  end

end
