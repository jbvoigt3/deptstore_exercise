Rails.application.routes.draw do
  root 'depts#index'  
  resources :depts do
    resources :products do  
      resources :items
    end
  end
end
