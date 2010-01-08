class Project < ActiveRecord::Base
  validates_presence_of :name, :site_url, :description, :email, :company, :company_url, :logo
  attr_accessible :name, :site_url, :description, :email, :company, :company_url, :logo
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  def to_param
    "#{id}-#{name.parameterize}"
  end

end
