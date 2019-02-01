Rails.application.routes.draw do
    
    root 'pages#home'
    resources :users
    resources :messages
    
    mount ActionCable.server => '/cable'
end
