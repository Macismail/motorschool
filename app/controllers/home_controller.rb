class HomeController < ApplicationController
  before_action :set_cookie

  def set_cookie
    if user_signed_in?
      cookies[:f_name] = current_user.f_name
      @user_f_name = cookies[:f_name]
    end
  end

  def index; end
end
