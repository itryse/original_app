class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :gender_id, :age_id, :goal_weight_id, :now_weight_id, :occupation_id, :profile])
  end

end
