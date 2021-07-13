Rails.application.routes.draw do
  resources :sales, only: [:index] do
    collection { post :import }
  end

  root to: 'sales#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
