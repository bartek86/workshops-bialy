class UsersController < ApplicationController
  before_action :authenticate_user!
  
    expose(:user)
    expose(:reviews)
    expose_decorated(:user)
    expose_decorated(:reviews, ancestor: :user )
    
  def show
  end
end
