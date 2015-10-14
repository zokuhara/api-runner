Rails.application.routes.draw do

  root 'posts#index'

  namespace :api do
    get '/posts' => 'posts#index'
    get 'posts/:id' => 'posts#show'

    post '/posts' => 'posts#create'

    put 'posts/:id' => 'posts#update'
    patch 'posts/:id' => 'posts#update'

    delete 'posts/:id' => 'posts#delete'

  end
end
