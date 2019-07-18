class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_email

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:f_name, :l_name, :email, :phone_n, :password) }

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:f_name, :l_name, :email, :phone_n, :password, :current_password) }
  end

  def set_email
    session[:email] = current_user.email if user_signed_in?
    @userEmail = session[:email]
  end
end
