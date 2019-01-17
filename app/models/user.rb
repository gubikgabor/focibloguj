class User < ApplicationRecord
  include Clearance::User
  validates :email, presence:true,
                        length: {minimum: 10}
  validates :encrypted_password, presence:true,
                        length: {minimum:5}
end
