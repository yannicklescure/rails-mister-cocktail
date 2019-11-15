Rails.application.routes.draw do
  get 'doses/new'
  get 'cocktails/index'
  get 'cocktails/new'
  get 'cocktails/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: %i[index create new show] do
    resources :doses, only: %i[new create]
  end
    resources :doses, only: %i[destroy]
end
