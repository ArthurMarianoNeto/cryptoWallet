Rails.application.routes.draw do
  get 'welcome/index'
  get '/inicio', to: 'welcome#index'

  resources :coins #criando rotas get, put, destroy, 

  root to: "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
