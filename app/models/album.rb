class Album < ActiveRecord::Base

    # Relationships
    belongs_to :gallery
    belongs_to :user
    has_many :phot , :dependent => :destroy

    # Attribute Validations
    #validates :album_name, :presence => true, :length => { maximum => 50}

end
