class User < ActiveRecord::Base

    # Relationships
    has_many :galleries

    #attr_accessor :first_name, :last_name, :email_id , :hashed_password , :salt
    # Attribute validations
    validates :first_name, :presence => true
    validates :last_name, :presence => true
    validates  :email_id, :presence => true, :uniqueness =>  true
    validates :hashed_password, :presence => true, :confirmation => true

    #Plain text authentication
    # @param email_id [Object]
    # @param hashed_password [Object]
    def self.authenticate( email_id , hashed_password )
      if user = find_by_email_id(email_id)
        if user.hashed_password = hashed_password
          user
        end
      end
    end


end
