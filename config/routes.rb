Rails.application.routes.draw do
  get 'abandoned_checkout/index'

  get 'checkout/index'
  get 'checkout/show/:id', to: 'checkout#show', as: 'checkout_show'
  get 'checkout/shipping_rates/:id', to: 'checkout#shipping_rates', as: 'checkout_shipping_rates'
  get 'checkout/create', to: 'checkout#create', as: 'checkout_create'

  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
