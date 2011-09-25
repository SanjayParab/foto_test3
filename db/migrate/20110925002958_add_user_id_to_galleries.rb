class AddUserIdToGalleries < ActiveRecord::Migration
  def self.up
    add_column :galleries, :user_id, :integer
    add_column :phots, :album_id , :integer
   end

  def self.down
    remove_column :galleries, :user_id
    remove_column :phots, :album_id
  end
end
