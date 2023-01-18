Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  
  resources :products do
    collection do
      post :index
    end
  end

  root "pages#index"
end
