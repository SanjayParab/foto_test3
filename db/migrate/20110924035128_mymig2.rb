class Mymig2 < ActiveRecord::Migration
  def self.up
    add_column :galleries, :gallery_id, :integer
  end

  def self.down
    remove_column :galleries, :gallery_id, :integer
  end
end
