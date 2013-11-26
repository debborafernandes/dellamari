Dellamari::Application.routes.draw do
  resources :comentarios

  resources :pizzas

  resources :pizza_tipos

  resources :produtos

  root :to => 'produtos#index'
end
