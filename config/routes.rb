Rails.application.routes.draw do
  resources :workers, only: %i[show index new create edit update]
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'workers#index', as: :authenticated_root
    end

    unauthenticated do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
