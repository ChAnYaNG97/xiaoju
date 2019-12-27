class User < ApplicationRecord
    has_secure_password
    
    validates :email, presence: true, uniqueness: true, format: {
        with: %r{[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?},
        message: 'must be a valid email address.'
    }
    validates :password_digest, presence: true
    validates :name, presence: true




    has_many :attends, dependent: :destroy
    has_many :comments, dependent: :destroy
end
