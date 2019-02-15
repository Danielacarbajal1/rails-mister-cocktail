Rails.application.routes.draw do
  get 'doses/show'
  get 'doses/index'
  get 'doses/destroy'
  get 'cocktails/new'
  get 'cocktails/create'
  get 'cocktails/show'
  get 'cocktails/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:new, :create, :show, :index] do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: :destroy
end
