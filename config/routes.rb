Gearbids::Application.routes.draw do
  resources :gear, :only => [:new, :create]
  root :to => "home#index"
end
