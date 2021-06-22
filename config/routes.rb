Rails.application.routes.draw do
  root 'procedures#index'
  get '/auth/auth0/callback' => 'auth0#callback'
  get '/auth/failure' => 'auth0#failure'
  get '/auth/logout' => 'auth0#logout'
  # get '/auth/redirect' => 'auth0#redirect'
  get '/' => redirect('/procedures') #'#procedures'
      resources :procedures do
        resources :comments
        resources :temperatures
      end
end