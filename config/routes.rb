Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :brews, only: [:index, :show, :new, :create, :update, :edit]
  resources :purchases, only: [:show, :new, :create]


  # get '/brews', to: 'brews#index'
  # get '/brews/:id', to: 'brews#show', as: brew_path

end
