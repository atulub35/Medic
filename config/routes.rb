Rails.application.routes.draw do
  resources :procedures do
    resources :comments, only: [:new, :create]
  end
  root to: 'procedures#index'
end