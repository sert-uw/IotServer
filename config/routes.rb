Rails.application.routes.draw do
  root 'temperatures#index'

  resources 'temperatures', only: [:index, :create]

  match '/temperatures/latest', to: 'temperatures#latest', via: 'get'
end
