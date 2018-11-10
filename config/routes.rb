Rails.application.routes.draw do
  #main
  root 'posts#index', as: 'home'
  #url's
  get 'about' => 'pages#about', as: 'about'
  resources :posts
end
