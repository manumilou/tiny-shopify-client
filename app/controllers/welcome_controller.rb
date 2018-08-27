class WelcomeController < ApplicationController
  def index
    render :json => @shop, :status => 200
  end
end
