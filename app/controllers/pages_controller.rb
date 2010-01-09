class PagesController < ApplicationController
  def index
    @projects = Project.find(:all, :limit => 5, :order => 'created_at DESC')
  end
end
