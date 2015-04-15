class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :get_categories




private
  	def check_admin_logged_in! # admin must be logged in
      if admin_signed_in? 
  	else 
  		 redirect_to root_path
    end
	end


    def after_sign_out_path_for(resource_or_scope)
  	request.referrer
	end

def get_categories
    @categories = Category.all
  end

  private

 

    def current_cart 
      Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
    end



end