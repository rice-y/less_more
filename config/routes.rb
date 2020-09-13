Rails.application.routes.draw do
  devise_for :users
  resources:targets, only: :index


end
