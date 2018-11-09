Rails.application.routes.draw do
  #main
  root 'posts#index'
  #url's
  get 'about' => 'pages#about'
  resources :posts
end
