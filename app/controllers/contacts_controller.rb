class ContactsController < ApplicationController
  # before_action :set_post, only: [:index, :create]
  # before_action :authenticate_user!, except: %i[show index]
  # rails g migrate add_user_id_to_lessons user_id:integer
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'error sending message.'
      render 'index'
    end
  end
end
