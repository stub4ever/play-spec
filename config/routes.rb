Rails.application.routes.draw do

  root 'users#index'
  get 'users' => 'users#index'
  get 'users/:id' => 'users#show', as: 'user'   #create new path

end
