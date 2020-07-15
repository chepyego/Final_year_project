class ApplicationController < ActionController::Base
    before_action :configuration_permitted_parameters, if: :devise_controller?

     protected

     def configuration_permitted_parameters
        devise_parameter_sanitizer.permit(:update, keys: [:first_name, :last_name,:url])
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
     end
    
end
