class PaperclipTest1 < ActiveRecord::Migration
  def self.up
    add_column :phots, :image_file_name, :string
    add_column :phots, :image_content_type , :string
    add_column :phots, :image_file_size,  :integer
    add_column :phots,  :image_updated_at, :datetime
  end

  def self.down
    remove_column :phots, :image_file_name
    remove_column :phots, :image_content_type
    remove_column :phots, :image_file_size
    remove_column :phots,  :image_updated_at
  end

end
