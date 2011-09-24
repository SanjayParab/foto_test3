class Phot < ActiveRecord::Base
  # Paperclip
    has_attached_file :image,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200",
      :large => "500x500>"}

  #validates_attachment_content_type :image, :content_type => 'image/jpeg'
end
