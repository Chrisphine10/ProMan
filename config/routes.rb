# frozen_string_literal: true

Rails.application.routes.draw do
  resources :projects
  resources :teams
  resources :pendings
  root to: 'home#index'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
