class CheckoutController < ApplicationController
  def index
    checkouts = ShopifyAPI::Checkout.all
    
    render json: checkouts, status: 200
  end

  def show
    checkout = ShopifyAPI::Checkout.find(checkout_params)

    render json: checkout, status: :ok
  rescue ActiveResource::ResourceNotFound
    render json: { error: "Checkout was not found" }, status: :not_found

  end

  private

  def checkout_params
    params.require(:id)
  end
end
