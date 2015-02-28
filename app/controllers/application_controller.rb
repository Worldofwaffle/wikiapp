class ApplicationController < ActionController::Base
  include Pundit
  after_action :reflash
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
 
   protected
 
   def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) << :name
   end
     rescue_from Pundit::NotAuthorizedError do |exception|
     redirect_to root_url, alert: exception.message
   end

     
  def reflash
    if flash[:notice]
      flash[:success] = flash[:notice]
      flash.delete(:notice)
    elsif flash[:alert]
      flash[:danger] = flash[:alert]
      flash.delete(:alert)
   end
 end
   end

