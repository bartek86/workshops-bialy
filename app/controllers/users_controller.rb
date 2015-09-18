class UsersController < ApplicationController
  before_action :authenticate_user!
  
    expose(:user)
    expose(:review)
    expose_decorated(:user)
    
    
  def show
  end
end
