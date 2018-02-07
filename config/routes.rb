Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'visitors#index'

  resource :instagram_feed, only: :show

  get 'authentication/redirect', to: 'authentication#redirect', as: 'authentication_redirect'
  get 'authentication/callback', to: 'authentication#callback', as: 'authentication_callback'
  delete 'authentication/logout', to: 'authentication#logout', as: 'logout'
end
