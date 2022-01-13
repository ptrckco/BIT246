Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'books#index'

  get 'books/about' => 'books#about', as: 'about_page'

  get 'books/our-mission' => 'books#our_mission', as: 'our_mission'

  resources :books
end
