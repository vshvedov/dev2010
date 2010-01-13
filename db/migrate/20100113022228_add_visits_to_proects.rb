class AddVisitsToProects < ActiveRecord::Migration
  def self.up
    add_column :projects, :visits, :integer, :default => 0
  end

  def self.down
    remove_column :projects, :visits
  end
end
