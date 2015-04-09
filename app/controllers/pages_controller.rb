class PagesController < ApplicationController
  before_filter :check_admin_logged_in!, :except => [:home]
  def home
  end
end
