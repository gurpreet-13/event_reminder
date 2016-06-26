Rails.application.routes.draw do

  root to: "home#index"

  devise_for :users, module: :users, controllers: {registrations: 'users/registrations'}#controllers: { sessions: 'users/sessions' }
  # resources :users  do
  # end
  resources :events

end
