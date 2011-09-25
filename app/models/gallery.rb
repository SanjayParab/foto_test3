class Gallery < ActiveRecord::Base

    # Relationships
    belongs_to :user
    has_many :albums  , :dependent => :destroy

    # Attribute Validations
    #validates :name, :presence => true, :length => { :maximum => 50 }

end
