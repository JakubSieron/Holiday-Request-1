Rails.application.routes.draw do
 resources :hrs

 root 'hrs#index'
end
