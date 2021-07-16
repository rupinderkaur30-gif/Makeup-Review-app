class Product < ApplicationRecord
    belongs_to :brand 
    has_many :reviews
    has_many :users, through: :reviews
    validates :name, :details, :description, :category, :image, :price, presence: true
    scope :order_by_price, -> {order(:price)}
end
