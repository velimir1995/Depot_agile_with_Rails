class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:title)
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
    if params[:set_locale]
      session[:lenguage] = params[:set_locale]
    else
      @products = Product.order(:title)
    end
  end
  
end
