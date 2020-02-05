Rails.application.routes.draw do
  resources :workers, only: %i[index new create]
  root 'workers#index'
end
