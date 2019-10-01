class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :current_cart
  

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :phonenumber])
  end


  private

  def current_cart
    @current_cart ||= Cart.session_or_create(session)
  end

  def new_cart
    @current_cart = Cart.create_empty(session)
  end


end
