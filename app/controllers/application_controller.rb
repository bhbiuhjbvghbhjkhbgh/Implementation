class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_in_path_for(resource)
    admin_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up)
  end

end
