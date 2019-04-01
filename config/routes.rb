Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope :path => "/:locale", :locale =>  /en|ru/ do

    get 'welcome/index'
    root 'welcome#index'
    root to: "home#index"

    get 'welcome/about'
    root 'welcome#about'
    root to: "home#about"

    resources :magazines
    resources :marks
    resources :products
    resources :types
    resources :items
    resources :reviews
  end
  resources :marks do
      resources :products
    end
    resources :types do
      resources :products
    end
    resources :products do
      resources :orders
    end
    resources :products do
      resources :reviews
    end
end
