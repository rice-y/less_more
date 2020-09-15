Rails.application.routes.draw do
  root to: 'targets#index'
  devise_for :users
  resources:targets, only: :index


end
