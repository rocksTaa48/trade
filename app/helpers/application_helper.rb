module ApplicationHelper

  include Pagy::Frontend

  def navbar_at()
      render partial: "navigations/navbar"
  end

  def sidebar_at()
      render partial: "navigations/sidebar"
  end

end
