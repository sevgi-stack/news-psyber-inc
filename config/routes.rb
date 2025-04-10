# Copyright 2025 Sevgi Aksoy  

Rails.application.routes.draw do

  root "articles#index"
  
  resources :sources, only: [:index, :new, :create, :destroy]
  resources :articles, only: [:index, :show]

end
  