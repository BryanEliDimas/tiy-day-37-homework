Rails.application.routes.draw do
  get '/posts' => 'posts#index'
  get 'posts/:id' => 'posts#show'
  post '/posts' => 'posts#create'
  put 'posts/:id' => 'posts#update'
  patch 'posts/:id' => 'posts#update'
  delete 'posts/:id' => 'posts#delete'
end
