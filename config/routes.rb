Rails.application.routes.draw do
  get 'checkout/index'
  get 'checkout/show/:id', to: 'checkout#show', as: 'checkout'

  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
