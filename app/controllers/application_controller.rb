class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :setup_api_credentials

  attr_reader :shop_url

  private

  def setup_api_credentials
    api_key = Rails.application.secrets.shopify_api_key
    api_secret = Rails.application.secrets.shopify_api_secret

    @shop_url = "https://#{api_key}:#{api_secret}@shop1.myshopify.io/admin"

    ShopifyAPI::Base.site = @shop_url
  end
end
