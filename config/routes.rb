Rails.application.routes.draw do
  # get 'activities/index'
  devise_for :users
  root to: "activities#index"
end
