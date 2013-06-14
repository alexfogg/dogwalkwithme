Dogwalkwithme::Application.routes.draw do

  resources :users
  get '/profile' => 'users#profile'

  resources :dogs
  resources :walks do
    collection do
      get 'search'
    end
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  root :to => 'home#index'
end
