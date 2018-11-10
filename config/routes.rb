Rails.application.routes.draw do
  #main
  root 'posts#index', as: 'home'
  #url's
  get 'about' => 'pages#about', as: 'about'
  #отслеживание ссылок внутри url-адресов;
  resources :posts do resources :comments end
end
