class User < ApplicationRecord
    has_secure_password

    
    
    validates :email, presence: true, uniqueness: true, format: {
        with: %r{[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?},
        message: 'must be a valid email address.'
    }
    validates :password_digest, presence: true
    validates :name, presence: true



  has_many :active_relationships,  class_name:  "Relationship",
                                   foreign_key: "attend_id",
                                   dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship",
                                   foreign_key: "activity_id",
                                   dependent:   :destroy
  has_many :attend, through: :active_relationships,  source: :attending
  has_many :include, through: :passive_relationships, source: :including


    has_many :attends, dependent: :destroy
end
