class UpdateUser < ActiveRecord::Migration[5.2]
  def change
    @usr = User.find_by(email: 'admin@gmail.com')
    @usr.update_attribute :admin, true
  end
end
