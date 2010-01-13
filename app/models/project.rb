class Project < ActiveRecord::Base
  validates_presence_of :name, :site_url, :description, :email, :company, :company_url, :logo
  attr_accessible :name, :site_url, :description, :email, :company, :company_url, :logo
  has_attached_file :logo,
    :styles => { :medium => ["300x220>", :jpg], :thumb => ["140x100>", :jpg] },
    :convert_options => {
      :thumb => '\( -background white -gravity center -extent 140x100 \) +swap -background none -layers merge +repage',
      :medium => '\( -background white -gravity center -extent 300x220 \) +swap -background none -layers merge +repage'
  }

  validates_attachment_content_type :logo,
                                    :content_type => ['image/jpeg', 'image/pjpeg', 'image/jpg', 'image/png'],
                                    :message => "Картинки должны быть картинками :)"
  validates_attachment_presence :logo

  def to_param
    "#{id}-#{name.parameterize}"
  end

end
