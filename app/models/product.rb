class Product < ApplicationRecord
    validates :name, presence: true
    validates :price, presence: true, numericality: {:greater_than => 0}
    validates :quantity, presence:true, numericality: {only_float: true}
    validates :description, presence: true
end
