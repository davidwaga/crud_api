class ProductSerializer < ActiveModel::Serializer
    attributes :id,:name, :price, :quantity, :description, :created_at, :updated_at
  end