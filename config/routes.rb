Rails.application.routes.draw do
  resources :users do
    member do
      get 'copy'
    end
  end
  root to: "users#index"
end
