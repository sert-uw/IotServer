Rails.application.routes.draw do
  root 'temperatures#index'

  resources 'temperatures', only: [:index, :create]
  resources 'gcms', only: [:create]

  match '/temperatures/latest', to: 'temperatures#latest', via: 'get'
end
