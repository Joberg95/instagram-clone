Rails.application.routes.draw do
  devise_for :users, :controllers => { registraitons: 'registrations' }
  root 'posts#index'

  resources :posts
end
