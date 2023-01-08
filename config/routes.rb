Rails.application.routes.draw do
  namespace :admin do
    devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions" }, skip: { :registrations }
  end
  namespace :store_owner do
    devise_for :store_owners, path: 'store_owners', controllers: { sessions: "store_owners/sessions", registrations: '/registrations' }
  end
  devise_for :customers, path: 'customers', controllers: { sessions: "customers/sessions", registrations: '/registrations' }
  # devise_for :users, path: 'users'
  # devise_for :customers
  # devise_for :store_owners
  # devise_for :admins
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
