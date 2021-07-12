class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :products, through: :reviews
    validates :name, :email, :age, presence: true 
    validates :email, uniqueness: true  
end
