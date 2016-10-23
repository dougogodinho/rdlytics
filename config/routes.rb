Rails.application.routes.draw do

  resources :users, only: [:show, :create, :index] do
    resources :interactions, only: [:show, :create, :index]
    resources :contacts, only: [:show, :create, :index]
  end

end
