Rails.application.routes.draw do
  get 'reports/index'
  get 'studies/new'
  get 'users/show'
  # get 'activities/index'
  devise_for :users
  root to: "activities#index"
  resources :activities, only: [:new, :create, :show, :edit, :update]
  resources :reports, only: [:new, :create, :edit, :update]
  resources :studies, only: [:new, :create, :edit, :update]
end
