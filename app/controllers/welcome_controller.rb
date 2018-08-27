require 'pry'

class WelcomeController < ApplicationController
  def index
    api_key = '03cf2a5a90fba6828a0b2129a6d0380b'
    api_secret = 'f2ac1295544f1aa41b61fd5a9f94445f'
    
    shop_url = "https://#{api_key}:#{api_secret}@shop1.myshopify.io/admin"

    ShopifyAPI::Base.site = shop_url
    shop = ShopifyAPI::Shop.current
    
    render :json => shop, :status => 200
  end
end
