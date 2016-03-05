Rails.application.routes.draw do

  get 'users' => 'users#index'
  get 'users/:id' => 'users#show', as: 'user'   #create new path

end
