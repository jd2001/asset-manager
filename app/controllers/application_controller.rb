class ApplicationController < ActionController::Base
  check_authorization unless: :devise_controller?
  load_and_authorize_resource except: :home

  rescue_from CanCan::AccessDenied do |exception|
    if current_user.present?
      redirect_to :root, :alert => exception.message
    else
      redirect_to new_user_session_path, :alert => exception.message
    end
  end
end
