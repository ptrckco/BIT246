Rails.application.routes.draw do
  post 'new', to: 'files#new'
  get 'files/new'
  root 'files#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
