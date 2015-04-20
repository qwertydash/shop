class PagesController < ApplicationController
  before_filter :check_admin_logged_in!, :except => [:home, :about]
  def home

  end

  def about

  end
end
