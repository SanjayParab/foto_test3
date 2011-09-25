class Phot < ActiveRecord::Base

  belongs_to :album
  belongs_to :gallery
  belongs_to :user

    # Paperclip
    has_attached_file :image #,
    #:styles => {
    #  :thumb => "500x500>"#,
    #  :small  => "150x150>",
    #  :medium => "200x200",
    #  :large => "500x500>"
    #}

  #validates_attachment_content_type :image, :content_type => 'image/jpeg'
end
