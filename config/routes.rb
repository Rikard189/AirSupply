Rails.application.routes.draw do
  resources :workers, only: %i[index new create edit update]
  root 'workers#index'
end
