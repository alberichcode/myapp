Rails.application.routes.draw do

  resources :user_projects
  resources :tenants do
    resources :projects do
      get 'users', on: :member
      put 'add_user', on: :member
    end
  end
  resources :members
  get 'home_projects/index'

  root :to => "home_projects#index"

  # *MUST* come *BEFORE* devise's definitions (below)
  as :user do
    match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end

  devise_for :users, :controllers => {
    :registrations => "milia/registrations",
    :confirmations => "confirmations",
    :sessions => "milia/sessions",
    :passwords => "milia/passwords",
  }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
