class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :setup_api_credentials

  SHOPIFY_API_KEY = '03cf2a5a90fba6828a0b2129a6d0380b'
  SHOPIFY_API_SECRET = 'f2ac1295544f1aa41b61fd5a9f94445f'
  SHOPIFY_SHOP_NAME = 'shop1'

  attr_reader :shop_url

  private

  def setup_api_credentials
    @shop_url = "https://#{SHOPIFY_API_KEY}:#{SHOPIFY_API_SECRET}@#{SHOPIFY_SHOP_NAME}.myshopify.io/admin"
    ShopifyAPI::Base.site = @shop_url
  end
end
