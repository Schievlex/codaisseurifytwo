Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "songs#index"

  get "songs" => "songs#index"
  get "songs/new" => "songs#new", as: :new_song
  get "songs/:id" => "songs#show", as: :song

  post "songs" => "songs#create"
end
