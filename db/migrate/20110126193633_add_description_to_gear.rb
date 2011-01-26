class AddDescriptionToGear < ActiveRecord::Migration
  def self.up
    add_column :gears, :description, :text
  end

  def self.down
    remove_column :gears, :description
  end
end
