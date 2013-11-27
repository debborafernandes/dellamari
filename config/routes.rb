Dellamari::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :comentarios

  resources :pizzas

  resources :pizza_tipos

  resources :produtos

  root :to => 'produtos#index'
end
