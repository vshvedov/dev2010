class Project < ActiveRecord::Base
  attr_accessible :name, :site_url, :description, :email, :company, :company_url
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
