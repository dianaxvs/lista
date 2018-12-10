Rails.application.routes.draw do
  get 'index/home'
    resources :contactos
  root 'index#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
