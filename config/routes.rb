Rails.application.routes.draw do
  devise_for :employees
 resources :hrs

 root 'hrs#index'
end
