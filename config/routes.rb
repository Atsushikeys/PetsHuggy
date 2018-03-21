Rails.application.routes.draw do
  resources :listings

  root :to => "pages#index"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations'}

  resources :users, only: [:show]

  get 'manage-listings/:id/basics' => 'listings#basics', as: 'manage_listing_basics'
  get 'manage-listings/:id/description' => 'listings#description', as: 'manage_listing_description'
  get 'manage-listings/:id/address' => 'listings#address', as: 'manage_listing_address'
  get 'manage-listings/:id/price' => 'listings#price', as: 'manage_listing_price'
  get 'manage-listings/:id/photos' => 'listings#photos', as: 'manage_listing_photos'
  get 'manage-listings/:id/calender' => 'listings#calender', as: 'manage_listing_calender'
  get 'manage-listings/:id/bankaccount' => 'listings#bankaccount', as: 'manage_listing_bankaccount'
  get 'manage-listings/:id/publish' => 'listings#publish', as: 'manage_listing_publish'
end
