Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # list pets
  get '/pets', to: 'pets#index', as: :pets # => url helpers -> pets_path 


  # creating a pet
  get '/pets/new', to: 'pets#new', as: :new_pet # => new_pet_path
  post '/pets', to: 'pets#create'

  # showing a pet
  get '/pets/:id', to: 'pets#show', as: :pet # => pet_path

  # updating
  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet # => edit_pet_path

  patch '/pets/:id', to: 'pets#update'

  # destroy
  delete '/pets/:id', to: 'pets#destroy'
end
