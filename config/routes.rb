Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'

  resources :orders, only: %i[destroy] do
    collection do
      post :checked
    end
  end

  resources :products do
    collection do
      post :index
    end
  end
  
  resources :users, only: %i[show], param: :id

  resources :categories

  resources :subcategories

  root "pages#index"
end
