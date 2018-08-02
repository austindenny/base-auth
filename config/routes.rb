Rails.application.routes.draw do

  # Home controller routes.
  root   'static_pages#home'
  get    'auth'            => 'static_pages#auth'

  # Get login token from Knock
  post   'user_token'      => 'user_token#create'

  # User actions
  get    '/users'          => 'users#index'
  get    '/users/current'  => 'users#current'
  post   '/users/create'   => 'users#create'
  patch  '/user/:id'       => 'users#update'
  delete '/user/:id'       => 'users#destroy'

end
