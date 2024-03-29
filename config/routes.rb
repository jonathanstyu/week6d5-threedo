AjaxDemo::Application.routes.draw do
  root :to => "sessions#new"

  resource :session, :only => [:new, :create, :destroy]
  resources :users
  
  resources :lists, :only => [:index, :create, :destroy] do
    resources :items, :only => [:new, :create, :destroy]
  end
  
  # resources :items, :except => [:new, :create, :destroy]
end
