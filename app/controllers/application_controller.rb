class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_detail

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:f_name, :l_name, :email, :phone_n, :password) }

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:f_name, :l_name, :email, :phone_n, :password, :current_password) }
  end

  def set_detail
    if user_signed_in?
      session[:f_name] = current_user.f_name
      session[:l_name] = current_user.l_name
      @userDetail = session[:f_name] + ' ' + session[:l_name]
    end
  end
end
