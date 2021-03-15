Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :stories do
    resources :comments, only: [:create]
  end

  # /@使用者名稱/文章標題-123
  get '@:username/:story_id', to: 'pages#show', as: 'story_page'
  
  # /@使用者名稱
  get '@:username', to: 'pages#user', as: 'user_page'

  root 'pages#index'
end
