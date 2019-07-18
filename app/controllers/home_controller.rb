class HomeController < ApplicationController
  def set_cookie
    cookies[:user_name] = 'ismail'
    cookies[:user_Id] = 4
  end

  def show_cookie
    @user_name = cookies[:user_name]
    @user_Id = cookies[:user_Id]
  end

  def delete_cookie
    cookies.delete :user_name
    cookies.delete :user_Id
  end

  def index; end
end
