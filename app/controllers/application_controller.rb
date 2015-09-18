class ApplicationController < ActionController::Base

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  
    #set strong parameters for new sign up fields
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { 
        |u| u.permit(:email, :password, :password_confirmation, :firstname, :lastname) }
      
      devise_parameter_sanitizer.for(:account_update) { 
        |u| u.permit(:email, :password, :password_confirmation, :current_password, :firstname, :lastname) }
    end
end
