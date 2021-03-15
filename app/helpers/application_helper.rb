module ApplicationHelper
  def is_user_logged_in
    if user_signed_in?
      return true
    else
      return false
    end
  end
end
