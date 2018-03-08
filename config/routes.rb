Rails.application.routes.draw do

  devise_for :users
  mount Sidekiq::Web => '/sidekiq'

  root "admin/fx_signals#index"

  namespace :admin do
    resources :orders
    resources :positions
    resources :fx_signals
  end

end
