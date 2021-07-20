class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :products, through: :reviews
    validates :name, :email, presence: true 
    validates :email, uniqueness: true  


  def self.find_or_create_from_google(user_info)
    find_or_create_by(email: user_info[:email]) do |user|
      user.name = user_info[:name]
      user.password = SecureRandom.hex
    end
  end
end
