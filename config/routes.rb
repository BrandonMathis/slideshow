Rails.application.routes.draw do
  resource :pictures, only: [:index]
  root to: 'pictures#index'
end
