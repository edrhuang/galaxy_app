Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get 'welcome/index'
  root 'welcome#index'
  

  resources :planets
  # You can have the root of your site routed with "root"
  

end
