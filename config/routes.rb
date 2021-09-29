Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flights, only: %i[index]
  resources :bookings, only: %i[new]
  root 'flights#index'
end
