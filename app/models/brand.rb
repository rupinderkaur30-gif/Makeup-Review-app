class Brand < ApplicationRecord
    has_many :products, inverse_of: :brand
    validates :name, presence: true
    accepts_nested_attributes_for :products, reject_if: proc{|attr| attr['name'].blank?}


    scope :order_by_name, -> {order("lower(name)")}
end
