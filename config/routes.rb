Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  
  resources :products do
    collection do
      post :index
    end
  end

  resources :categories

  resources :subcategories


  root "pages#index"
end
