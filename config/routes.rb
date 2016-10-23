Rails.application.routes.draw do

  resources :users, only: [:show, :create, :index] do

  end

end
