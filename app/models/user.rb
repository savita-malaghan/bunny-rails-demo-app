class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest


    has_secure_password
    validates_presence_of :password_digest, on: :create
    validates :email, uniqueness: true, presence: true


end
