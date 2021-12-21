class ApplicationController < ActionController::Base
  def after_sign_in_path_for(_resource)
    # user_path(current_user) # your path
    groups_path
  end
end
