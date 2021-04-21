Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }

  as :user do
    # When user is logged in
    authenticated do
      get '/' => redirect('/procedures') #'#tickets'
      resources :procedures do
        resources :comments
        resources :temperatures
      end
    end

    # When user is not logged in
    unauthenticated do
      root to: 'users/sessions#new'
    end
  end
end