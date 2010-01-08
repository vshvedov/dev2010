class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.string :site_url
      t.text :description
      t.string :email
      t.string :company
      t.string :company_url
      t.timestamps
    end
  end
  
  def self.down
    drop_table :projects
  end
end
