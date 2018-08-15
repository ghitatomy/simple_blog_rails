Rails.application.routes.draw do
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'
  resources :posts do # posts/1/comments
    resources :comments
  end
end
