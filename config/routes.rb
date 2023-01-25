Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  
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
