class PagesController < ApplicationController
  def index
    @projects = Project.find(:all, :limit => 10, :order => 'created_at DESC')
    @allprojects = Project.find(:all)
    @rndprojects = Project.find(:all, :limit => 10, :order => 'RAND()')
  end

  def rss
    @projects = Project.find(:all, :order => "id DESC")
    render :rss => @projects
  end
end
