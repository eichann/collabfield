Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#index'
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
    get 'login', to: 'devise/sessions#new'
  end
  resources :posts do
    collection do
      get 'hobby'
      get 'study'
      get 'team'
    end
  end
end
