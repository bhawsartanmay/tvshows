Rails.application.routes.draw do
  get 'home/index'
  get 'home/search'
  root 'home#index'
  resources :shows do
    get :favorite
  end 
end
