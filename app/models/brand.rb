class Brand < ApplicationRecord
    has_many :products
    validates :name, presence: true
    accepts_nested_attributes_for :products, reject_if: proc{|attr| attr['name'].blank?}
end
