class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.order(:title)
    session[:visit_count] ||= 0 #initalize the vist count on first visit
    session[:visit_count] += 1 # increment the count with each visit
    @visit_count = session[:visit_count]
  end
end
