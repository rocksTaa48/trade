class AdminsController < ApplicationController
  before_action :reject_non_admins

  def show
    
  end

  private

  def reject_non_admins
    unless current_user.admin?
      render partial: "pages/alarm" and return
    end
  end
  
end