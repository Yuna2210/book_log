Rails.application.routes.draw do
  root to: 'works#index'
  get 'home/index' => 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :works
  resources :authors
end
