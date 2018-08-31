class CheckoutController < ApplicationController
  def index
    checkouts = ShopifyAPI::AbandonedCheckout.all
    
    render json: checkouts, status: 200
  end

  def show
    checkout = ShopifyAPI::Checkout.find(checkout_params)

    render json: checkout, status: :ok
  rescue ActiveResource::ResourceNotFound
    render json: { error: "Checkout was not found. Have you used a valid token?" }, status: :not_found
  end

  def create
    checkout = ShopifyAPI::Checkout.new
    checkout.save

    render json: checkout, status: :ok
  end

  def shipping_rates
    checkout = ShopifyAPI::Checkout.find(checkout_params)

    shipping_rates = ShopifyAPI::ShippingRate.find(:all, params: { checkout_id: checkout.id })

    render json: shipping_rates, status: :ok
  end

  private

  def checkout_params
    params.require(:id)
  end
end
