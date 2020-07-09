Rails.application.routes.draw do

  resources :subsidios
  get 'favorite_subsidio/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  resources :users do
    resources :proyectos
    resources :empresas
  end
  get 'welcome/index'
  root to: "welcome#index"
end
