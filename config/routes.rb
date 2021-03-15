Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # /@使用者名稱/文章標題-123
  get '@:username/:story_id', to: 'pages#show', as: 'story_page'
  
  # /@使用者名稱
  get '@:username', to: 'pages#user', as: 'user_page'

  root 'pages#index'

  resources :stories
end
