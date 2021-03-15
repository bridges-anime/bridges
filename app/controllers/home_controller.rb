class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to '/dashboard'
    else
      render action: 'index'
    end
  end
end
