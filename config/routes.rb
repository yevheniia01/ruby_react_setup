Rails.application.routes.draw do
  resources :entry2s
  root to: "entry2s#index"
end
