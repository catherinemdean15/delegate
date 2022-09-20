Rails.application.routes.draw do
  root 'welcome#index'

  get 'auth/:provider/callback' => 'sessions#omniauth'

  resources :users, only: %i[create destroy] do
    member { get 'dashboard' }
  end
end
