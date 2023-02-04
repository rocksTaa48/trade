class UsersController < ApplicationController

  before_action :users_filter

  def show
  end

  private

  def users_filter
    if current_user.admin?
      render partial: "pages/alarm" and return
    end
  end
	
end