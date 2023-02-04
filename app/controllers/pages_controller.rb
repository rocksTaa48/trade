class PagesController < ApplicationController

  before_action :separate_users

  def show
  end

  private
  def separate_users
    if user_signed_in? && current_user.admin?
      render "admins/show"
    end
  end

end