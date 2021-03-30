# frozen_string_literal: true
module ApplicationHelper
  def is_user_logged_in
    if user_signed_in?
      true
    else
      false
    end
  end
end
