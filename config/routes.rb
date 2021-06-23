Rails.application.routes.draw do
  get 'api/public' => 'public#public'
  get 'api/private' => 'private#private'
  get 'api/private-scoped' => 'private#private_scoped'
  
  root 'procedures#index'
  get '/auth/auth0/callback' => 'auth0#callback'
  get '/auth/failure' => 'auth0#failure'
  get '/auth/logout' => 'auth0#logout'
  get '/auth/redirect' => 'auth0#redirect'
  get '/' => redirect('/procedures') #'#procedures'
      resources :procedures do
        resources :comments
        resources :temperatures
      end
end